
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct mppe_state {int cohnum; int flushrequired; int rc4key; int sesskey; int keylen; scalar_t__ stateless; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int reqid; } ;
struct ccp {int compin; int uncompin; TYPE_1__ fsm; } ;


 int CODE_RESETREQ ;
 int LogCCP ;
 int LogDEBUG ;
 int LogERROR ;
 char* MBUF_CTOP (struct mbuf*) ;
 int MB_CCPOUT ;
 int MPPEKeyChange (struct mppe_state*) ;
 int MPPE_ENCRYPTED ;
 int MPPE_FLUSHED ;
 int MPPE_HEADER_BITMASK ;
 int MPPE_HEADER_FLAG ;
 int MPPE_HEADER_FLAGMASK ;
 int MPPE_HEADER_FLAGSHIFT ;
 scalar_t__ MPPE_HEADER_STATEFUL_KEYCHANGES ;
 int RC4 (int *,int,char*,char*) ;
 int RC4_set_key (int *,int ,int ) ;
 int fsm_Output (TYPE_1__*,int ,int ,int *,int ,int ) ;
 int log_DumpBp (int ,char*,struct mbuf*) ;
 int log_Printf (int ,char*,...) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,int*,int) ;
 int ntohs (int) ;

__attribute__((used)) static struct mbuf *
MPPEInput(void *v, struct ccp *ccp, u_short *proto, struct mbuf *mp)
{
  struct mppe_state *mip = (struct mppe_state *)v;
  u_short prefix;
  char *rp;
  int dictinit, flushed, ilen, len, n;

  ilen = m_length(mp);
  dictinit = 0;
  ccp->compin += ilen;

  log_Printf(LogDEBUG, "MPPE: Input: Proto %02x (%d bytes)\n", *proto, ilen);
  log_DumpBp(LogDEBUG, "MPPE: Input: Packet:", mp);

  mp = mbuf_Read(mp, &prefix, 2);
  prefix = ntohs(prefix);
  flushed = prefix & MPPE_FLUSHED;
  prefix &= ~flushed;
  if ((prefix & MPPE_HEADER_BITMASK) != MPPE_ENCRYPTED) {
    log_Printf(LogERROR, "MPPE: Input: Invalid packet (flags = 0x%x)\n",
               (prefix & MPPE_HEADER_BITMASK) | flushed);
    m_freem(mp);
    return ((void*)0);
  }

  prefix &= ~MPPE_HEADER_BITMASK;

  if (!flushed && mip->stateless) {
    log_Printf(LogCCP, "MPPEInput: Packet without MPPE_FLUSHED set"
               " in stateless mode\n");
    flushed = MPPE_FLUSHED;

  }

  if (mip->stateless) {

    while (prefix != mip->cohnum) {
      log_Printf(LogDEBUG, "MPPEInput: Key changed [%u]\n", prefix);
      MPPEKeyChange(mip);




      mip->cohnum++;
      mip->cohnum &= ~MPPE_HEADER_BITMASK;
    }
    dictinit = 1;
  } else {
    if (flushed) {




      n = (prefix >> MPPE_HEADER_FLAGSHIFT) -
          (mip->cohnum >> MPPE_HEADER_FLAGSHIFT);
      if (n < 0)
        n += MPPE_HEADER_STATEFUL_KEYCHANGES;
      while (n--) {
        log_Printf(LogDEBUG, "MPPEInput: Key changed during catchup [%u]\n",
                   prefix);
        MPPEKeyChange(mip);
      }
      mip->flushrequired = 0;
      mip->cohnum = prefix;
      dictinit = 1;
    }

    if (mip->flushrequired) {





      log_Printf(LogDEBUG, "MPPE: Not flushed - discarded\n");
      fsm_Output(&ccp->fsm, CODE_RESETREQ, ccp->fsm.reqid++, ((void*)0), 0,
                 MB_CCPOUT);
      m_freem(mp);
      return ((void*)0);
    }

    if (prefix != mip->cohnum) {






      log_Printf(LogCCP, "MPPE: Input: Got seq %u, not %u\n",
                 prefix, mip->cohnum);
      fsm_Output(&ccp->fsm, CODE_RESETREQ, ccp->fsm.reqid++, ((void*)0), 0,
                 MB_CCPOUT);
      mip->flushrequired = 1;
      m_freem(mp);
      return ((void*)0);
    }

    if ((prefix & MPPE_HEADER_FLAGMASK) == MPPE_HEADER_FLAG) {
      log_Printf(LogDEBUG, "MPPEInput: Key changed [%u]\n", prefix);
      MPPEKeyChange(mip);
      dictinit = 1;
    } else if (flushed)
      dictinit = 1;





    mip->cohnum++;
    mip->cohnum &= ~MPPE_HEADER_BITMASK;
  }

  if (dictinit) {
    log_Printf(LogDEBUG, "MPPEInput: Dictionary initialised [%u]\n", prefix);
    RC4_set_key(&mip->rc4key, mip->keylen, mip->sesskey);
  }

  mp = mbuf_Read(mp, proto, 2);
  RC4(&mip->rc4key, 2, (char *)proto, (char *)proto);
  *proto = ntohs(*proto);

  rp = MBUF_CTOP(mp);
  len = m_length(mp);
  RC4(&mip->rc4key, len, rp, rp);

  log_Printf(LogDEBUG, "MPPEInput: Decrypted: Proto %02x (%d bytes)\n",
             *proto, len);
  log_DumpBp(LogDEBUG, "MPPEInput: Decrypted: Packet:", mp);

  ccp->uncompin += len;

  return mp;
}
