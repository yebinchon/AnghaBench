
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct tcphdr {int th_off; } ;
struct pptpMsgHead {int dummy; } ;
struct pptpCodes {int dummy; } ;
struct pptpCallIds {int dummy; } ;
struct ip {int ip_hl; int ip_len; } ;
struct TYPE_2__ {int magic; int msgType; int type; } ;
typedef TYPE_1__* PptpMsgHead ;
typedef int * PptpCallId ;


 scalar_t__ PPTP_CTRL_MSG_TYPE ;
 scalar_t__ PPTP_InCallReply ;
 scalar_t__ PPTP_MAGIC ;
 scalar_t__ PPTP_OutCallReply ;
 scalar_t__ ip_next (struct ip*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ tcp_next (struct tcphdr*) ;

__attribute__((used)) static PptpCallId
AliasVerifyPptp(struct ip *pip, u_int16_t * ptype)
{
 int hlen, tlen, dlen;
 PptpMsgHead hptr;
 struct tcphdr *tc;


 tc = (struct tcphdr *)ip_next(pip);
 hlen = (pip->ip_hl + tc->th_off) << 2;
 tlen = ntohs(pip->ip_len);
 dlen = tlen - hlen;


 if (dlen < (int)(sizeof(struct pptpMsgHead) + sizeof(struct pptpCallIds)))
  return (((void*)0));


 hptr = (PptpMsgHead) tcp_next(tc);


 *ptype = ntohs(hptr->type);


 if ((ntohs(hptr->msgType) != PPTP_CTRL_MSG_TYPE) ||
     (ntohl(hptr->magic) != PPTP_MAGIC))
  return (((void*)0));


 if ((*ptype == PPTP_OutCallReply || *ptype == PPTP_InCallReply) &&
     (dlen < (int)(sizeof(struct pptpMsgHead) + sizeof(struct pptpCallIds) +
  sizeof(struct pptpCodes))))
  return (((void*)0));
 else
  return (PptpCallId) (hptr + 1);
}
