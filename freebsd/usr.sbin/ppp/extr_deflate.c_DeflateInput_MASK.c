#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
struct mbuf {int m_len; int m_offset; struct mbuf* m_next; } ;
struct TYPE_2__ {int avail_in; int* next_out; int avail_out; char* msg; void* next_in; } ;
struct deflate_state {int seqno; int uncomp_rec; TYPE_1__ cx; } ;
struct ccp {int compin; int uncompin; int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int DEFLATE_CHUNK_LEN ; 
 void* EMPTY_BLOCK ; 
 int /*<<< orphan*/  LogCCP ; 
 int /*<<< orphan*/  LogDEBUG ; 
 void* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_CCPIN ; 
 int Z_NO_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* garbage ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct mbuf* FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC8 (struct mbuf*,int*,int) ; 

__attribute__((used)) static struct mbuf *
FUNC9(void *v, struct ccp *ccp, u_short *proto, struct mbuf *mi)
{
  struct deflate_state *state = (struct deflate_state *)v;
  struct mbuf *mo, *mo_head, *mi_head;
  u_char *wp;
  int ilen, olen;
  int seq, flush, res, first;
  u_char hdr[2];

  FUNC3(LogDEBUG, "DeflateInput: Decompress packet:", mi);
  mi_head = mi = FUNC8(mi, hdr, 2);
  ilen = 2;

  /* Check the sequence number. */
  seq = (hdr[0] << 8) + hdr[1];
  FUNC4(LogDEBUG, "DeflateInput: Seq %d\n", seq);
  if (seq != state->seqno) {
    if (seq <= state->uncomp_rec)
      /*
       * So the peer's started at zero again - fine !  If we're wrong,
       * inflate() will fail.  This is better than getting into a loop
       * trying to get a ResetReq to a busy sender.
       */
      state->seqno = seq;
    else {
      FUNC4(LogCCP, "DeflateInput: Seq error: Got %d, expected %d\n",
                seq, state->seqno);
      FUNC6(mi_head);
      FUNC1(&ccp->fsm);
      return NULL;
    }
  }
  state->seqno++;
  state->uncomp_rec = 0;

  /* Allocate an output mbuf */
  mo_head = mo = FUNC7(DEFLATE_CHUNK_LEN, MB_CCPIN);

  /* Our proto starts with 0 if it's compressed */
  wp = FUNC0(mo);
  wp[0] = '\0';

  /*
   * We set avail_out to 1 initially so we can look at the first
   * byte of the output and decide whether we have a compressed
   * proto field.
   */
  state->cx.next_in = FUNC0(mi);
  state->cx.avail_in = mi->m_len;
  state->cx.next_out = wp + 1;
  state->cx.avail_out = 1;
  ilen += mi->m_len;

  flush = mi->m_next ? Z_NO_FLUSH : Z_SYNC_FLUSH;
  first = 1;
  olen = 0;

  while (1) {
    if ((res = FUNC2(&state->cx, flush)) != Z_OK) {
      if (res == Z_STREAM_END)
        break;			/* Done */
      FUNC4(LogCCP, "DeflateInput: inflate returned %d (%s)\n",
                res, state->cx.msg ? state->cx.msg : "");
      FUNC6(mo_head);
      FUNC6(mi);
      FUNC1(&ccp->fsm);
      return NULL;
    }

    if (flush == Z_SYNC_FLUSH && state->cx.avail_out != 0)
      break;

    if (state->cx.avail_in == 0 && mi && (mi = FUNC5(mi)) != NULL) {
      /* underflow */
      state->cx.next_in = FUNC0(mi);
      ilen += (state->cx.avail_in = mi->m_len);
      if (mi->m_next == NULL)
        flush = Z_SYNC_FLUSH;
    }

    if (state->cx.avail_out == 0) {
      /* overflow */
      if (first) {
        if (!(wp[1] & 1)) {
          /* 2 byte proto, shuffle it back in output */
          wp[0] = wp[1];
          state->cx.next_out--;
          state->cx.avail_out = DEFLATE_CHUNK_LEN-1;
        } else
          state->cx.avail_out = DEFLATE_CHUNK_LEN-2;
        first = 0;
      } else {
        olen += (mo->m_len = DEFLATE_CHUNK_LEN);
        mo->m_next = FUNC7(DEFLATE_CHUNK_LEN, MB_CCPIN);
        mo = mo->m_next;
        state->cx.next_out = FUNC0(mo);
        state->cx.avail_out = DEFLATE_CHUNK_LEN;
      }
    }
  }

  if (mi != NULL)
    FUNC6(mi);

  if (first) {
    FUNC4(LogCCP, "DeflateInput: Length error\n");
    FUNC6(mo_head);
    FUNC1(&ccp->fsm);
    return NULL;
  }

  olen += (mo->m_len = DEFLATE_CHUNK_LEN - state->cx.avail_out);

  *proto = ((u_short)wp[0] << 8) | wp[1];
  mo_head->m_offset += 2;
  mo_head->m_len -= 2;
  olen -= 2;

  ccp->compin += ilen;
  ccp->uncompin += olen;

  FUNC4(LogDEBUG, "DeflateInput: %d => %d bytes, proto 0x%04x\n",
            ilen, olen, *proto);

  /*
   * Simulate an EMPTY_BLOCK so that our dictionary stays in sync.
   * The peer will have silently removed this!
   */
  state->cx.next_out = garbage;
  state->cx.avail_out = sizeof garbage;
  state->cx.next_in = EMPTY_BLOCK;
  state->cx.avail_in = sizeof EMPTY_BLOCK;
  FUNC2(&state->cx, Z_SYNC_FLUSH);

  return mo_head;
}