
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int icmpLinkCount; int udpLinkCount; int sctpLinkCount; int tcpLinkCount; int pptpLinkCount; int protoLinkCount; int fragmentIdLinkCount; int fragmentPtrLinkCount; int sockCount; scalar_t__ logDesc; } ;


 int AliasLog (scalar_t__,char*,int,...) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;

__attribute__((used)) static void
ShowAliasStats(struct libalias *la)
{

 LIBALIAS_LOCK_ASSERT(la);

 if (la->logDesc) {
  int tot = la->icmpLinkCount + la->udpLinkCount +
    (la->sctpLinkCount>>1) +
   la->tcpLinkCount + la->pptpLinkCount +
   la->protoLinkCount + la->fragmentIdLinkCount +
   la->fragmentPtrLinkCount;

  AliasLog(la->logDesc,
    "icmp=%u, udp=%u, tcp=%u, sctp=%u, pptp=%u, proto=%u, frag_id=%u frag_ptr=%u / tot=%u",
    la->icmpLinkCount,
    la->udpLinkCount,
    la->tcpLinkCount,
    la->sctpLinkCount>>1,
    la->pptpLinkCount,
    la->protoLinkCount,
    la->fragmentIdLinkCount,
    la->fragmentPtrLinkCount, tot);

  AliasLog(la->logDesc, " (sock=%u)\n", la->sockCount);

 }
}
