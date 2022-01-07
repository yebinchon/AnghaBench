
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct mbuf {int m_len; int m_offset; struct mbuf* m_next; } ;
struct TYPE_2__ {int avail_in; int* next_out; int avail_out; char* msg; void* next_in; } ;
struct deflate_state {int seqno; int uncomp_rec; TYPE_1__ cx; } ;
struct ccp {int compin; int uncompin; int fsm; } ;


 int DEFLATE_CHUNK_LEN ;
 void* EMPTY_BLOCK ;
 int LogCCP ;
 int LogDEBUG ;
 void* MBUF_CTOP (struct mbuf*) ;
 int MB_CCPIN ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int ccp_SendResetReq (int *) ;
 int* garbage ;
 int inflate (TYPE_1__*,int) ;
 int log_DumpBp (int ,char*,struct mbuf*) ;
 int log_Printf (int ,char*,...) ;
 struct mbuf* m_free (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 void* m_get (int,int ) ;
 struct mbuf* mbuf_Read (struct mbuf*,int*,int) ;

__attribute__((used)) static struct mbuf *
DeflateInput(void *v, struct ccp *ccp, u_short *proto, struct mbuf *mi)
{
  struct deflate_state *state = (struct deflate_state *)v;
  struct mbuf *mo, *mo_head, *mi_head;
  u_char *wp;
  int ilen, olen;
  int seq, flush, res, first;
  u_char hdr[2];

  log_DumpBp(LogDEBUG, "DeflateInput: Decompress packet:", mi);
  mi_head = mi = mbuf_Read(mi, hdr, 2);
  ilen = 2;


  seq = (hdr[0] << 8) + hdr[1];
  log_Printf(LogDEBUG, "DeflateInput: Seq %d\n", seq);
  if (seq != state->seqno) {
    if (seq <= state->uncomp_rec)





      state->seqno = seq;
    else {
      log_Printf(LogCCP, "DeflateInput: Seq error: Got %d, expected %d\n",
                seq, state->seqno);
      m_freem(mi_head);
      ccp_SendResetReq(&ccp->fsm);
      return ((void*)0);
    }
  }
  state->seqno++;
  state->uncomp_rec = 0;


  mo_head = mo = m_get(DEFLATE_CHUNK_LEN, MB_CCPIN);


  wp = MBUF_CTOP(mo);
  wp[0] = '\0';






  state->cx.next_in = MBUF_CTOP(mi);
  state->cx.avail_in = mi->m_len;
  state->cx.next_out = wp + 1;
  state->cx.avail_out = 1;
  ilen += mi->m_len;

  flush = mi->m_next ? Z_NO_FLUSH : Z_SYNC_FLUSH;
  first = 1;
  olen = 0;

  while (1) {
    if ((res = inflate(&state->cx, flush)) != Z_OK) {
      if (res == Z_STREAM_END)
        break;
      log_Printf(LogCCP, "DeflateInput: inflate returned %d (%s)\n",
                res, state->cx.msg ? state->cx.msg : "");
      m_freem(mo_head);
      m_freem(mi);
      ccp_SendResetReq(&ccp->fsm);
      return ((void*)0);
    }

    if (flush == Z_SYNC_FLUSH && state->cx.avail_out != 0)
      break;

    if (state->cx.avail_in == 0 && mi && (mi = m_free(mi)) != ((void*)0)) {

      state->cx.next_in = MBUF_CTOP(mi);
      ilen += (state->cx.avail_in = mi->m_len);
      if (mi->m_next == ((void*)0))
        flush = Z_SYNC_FLUSH;
    }

    if (state->cx.avail_out == 0) {

      if (first) {
        if (!(wp[1] & 1)) {

          wp[0] = wp[1];
          state->cx.next_out--;
          state->cx.avail_out = DEFLATE_CHUNK_LEN-1;
        } else
          state->cx.avail_out = DEFLATE_CHUNK_LEN-2;
        first = 0;
      } else {
        olen += (mo->m_len = DEFLATE_CHUNK_LEN);
        mo->m_next = m_get(DEFLATE_CHUNK_LEN, MB_CCPIN);
        mo = mo->m_next;
        state->cx.next_out = MBUF_CTOP(mo);
        state->cx.avail_out = DEFLATE_CHUNK_LEN;
      }
    }
  }

  if (mi != ((void*)0))
    m_freem(mi);

  if (first) {
    log_Printf(LogCCP, "DeflateInput: Length error\n");
    m_freem(mo_head);
    ccp_SendResetReq(&ccp->fsm);
    return ((void*)0);
  }

  olen += (mo->m_len = DEFLATE_CHUNK_LEN - state->cx.avail_out);

  *proto = ((u_short)wp[0] << 8) | wp[1];
  mo_head->m_offset += 2;
  mo_head->m_len -= 2;
  olen -= 2;

  ccp->compin += ilen;
  ccp->uncompin += olen;

  log_Printf(LogDEBUG, "DeflateInput: %d => %d bytes, proto 0x%04x\n",
            ilen, olen, *proto);





  state->cx.next_out = garbage;
  state->cx.avail_out = sizeof garbage;
  state->cx.next_in = EMPTY_BLOCK;
  state->cx.avail_in = sizeof EMPTY_BLOCK;
  inflate(&state->cx, Z_SYNC_FLUSH);

  return mo_head;
}
