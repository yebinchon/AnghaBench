
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_len; } ;
struct bstp_tbpdu {scalar_t__ tbu_bpdutype; } ;
struct bstp_state {int dummy; } ;
struct bstp_config_unit {int dummy; } ;
struct bstp_port {struct bstp_config_unit bp_msg_cu; } ;
struct bstp_cbpdu {int dummy; } ;


 scalar_t__ BSTP_BPDU_RSTP_LEN ;
 scalar_t__ BSTP_MSGTYPE_RSTP ;
 int bstp_decode_bpdu (struct bstp_port*,struct bstp_cbpdu*,struct bstp_config_unit*) ;
 int bstp_received_bpdu (struct bstp_state*,struct bstp_port*,struct bstp_config_unit*) ;
 int caddr_t ;
 struct mbuf* m_pullup (struct mbuf*,scalar_t__) ;
 int memcpy (struct bstp_cbpdu*,int ,scalar_t__) ;
 int mtod (struct mbuf*,int ) ;

__attribute__((used)) static void
bstp_received_rstp(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
 struct bstp_cbpdu cpdu;
 struct bstp_config_unit *cu = &bp->bp_msg_cu;

 if (tpdu->tbu_bpdutype != BSTP_MSGTYPE_RSTP)
  return;

 if ((*mp)->m_len < BSTP_BPDU_RSTP_LEN &&
     (*mp = m_pullup(*mp, BSTP_BPDU_RSTP_LEN)) == ((void*)0))
  return;
 memcpy(&cpdu, mtod(*mp, caddr_t), BSTP_BPDU_RSTP_LEN);

 bstp_decode_bpdu(bp, &cpdu, cu);
 bstp_received_bpdu(bs, bp, cu);
}
