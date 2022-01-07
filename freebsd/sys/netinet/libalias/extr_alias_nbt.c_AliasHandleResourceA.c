
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
struct in_addr {int dummy; } ;
struct TYPE_8__ {scalar_t__* uh_sum; scalar_t__ newaddr; scalar_t__ oldaddr; } ;
struct TYPE_7__ {int rdlen; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
typedef TYPE_1__ NBTNsResourceA ;
typedef TYPE_2__ NBTNsResource ;
typedef TYPE_3__ NBTArguments ;


 int ADJUST_CHECKSUM (int,scalar_t__) ;
 int INET_ADDRSTRLEN ;
 int INET_NTOA_BUF (char*) ;
 scalar_t__ SizeOfResourceA ;
 int bcmp (scalar_t__*,scalar_t__*,int) ;
 char* inet_ntoa_r (scalar_t__,int ) ;
 scalar_t__ ntohs (int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static u_char *
AliasHandleResourceA(
    NBTNsResource * q,
    char *pmax,
    NBTArguments * nbtarg)
{
 NBTNsResourceA *a;
 u_short bcount;





 if (q == ((void*)0) || (char *)(q + 1) > pmax)
  return (((void*)0));


 a = (NBTNsResourceA *) ((u_char *) q + sizeof(NBTNsResource));


 bcount = ntohs(q->rdlen);







 while (bcount != 0) {
  if (a == ((void*)0) || (char *)(a + 1) > pmax)
   return (((void*)0));



  if (!bcmp(&nbtarg->oldaddr, &a->addr, sizeof(struct in_addr))) {
   if (*nbtarg->uh_sum != 0) {
    int acc;
    u_short *sptr;

    sptr = (u_short *) & (a->addr);
    acc = *sptr++;
    acc += *sptr;
    sptr = (u_short *) & nbtarg->newaddr;
    acc -= *sptr++;
    acc -= *sptr;
    ADJUST_CHECKSUM(acc, *nbtarg->uh_sum);
   }
   a->addr = nbtarg->newaddr;
  }
  a++;
  bcount -= SizeOfResourceA;
 }
 if (a == ((void*)0) || (char *)(a + 1) > pmax)
  a = ((void*)0);
 return ((u_char *) a);
}
