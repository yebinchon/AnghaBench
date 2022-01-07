
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct in_addr {int dummy; } ;
struct TYPE_8__ {scalar_t__* uh_sum; scalar_t__ newaddr; scalar_t__ oldaddr; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_6__ {int rdlen; } ;
typedef TYPE_1__ NBTNsResource ;
typedef TYPE_2__ NBTNsRNB ;
typedef TYPE_3__ NBTArguments ;


 int ADJUST_CHECKSUM (int,scalar_t__) ;
 int INET_ADDRSTRLEN ;
 int INET_NTOA_BUF (char*) ;
 int SizeOfNsRNB ;
 int SizeOfNsResource ;
 int bcmp (scalar_t__*,scalar_t__*,int) ;
 char* inet_ntoa_r (scalar_t__,int ) ;
 int ntohs (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static u_char *
AliasHandleResourceNB(
    NBTNsResource * q,
    char *pmax,
    NBTArguments * nbtarg)
{
 NBTNsRNB *nb;
 u_short bcount;





 if (q == ((void*)0) || (char *)(q + 1) > pmax)
  return (((void*)0));

 bcount = ntohs(q->rdlen);


 nb = (NBTNsRNB *) ((u_char *) q + SizeOfNsResource);
 while (nb != ((void*)0) && bcount != 0) {
  if ((char *)(nb + 1) > pmax) {
   nb = ((void*)0);
   break;
  }



  if (!bcmp(&nbtarg->oldaddr, &nb->addr, sizeof(struct in_addr))) {
   if (*nbtarg->uh_sum != 0) {
    int acc;
    u_short *sptr;

    sptr = (u_short *) & (nb->addr);
    acc = *sptr++;
    acc += *sptr;
    sptr = (u_short *) & (nbtarg->newaddr);
    acc -= *sptr++;
    acc -= *sptr;
    ADJUST_CHECKSUM(acc, *nbtarg->uh_sum);
   }
   nb->addr = nbtarg->newaddr;



  }





  nb = (NBTNsRNB *) ((u_char *) nb + SizeOfNsRNB);
  bcount -= SizeOfNsRNB;
 }
 if (nb == ((void*)0) || (char *)(nb + 1) > pmax) {
  nb = ((void*)0);
 }
 return ((u_char *) nb);
}
