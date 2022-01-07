
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
struct TYPE_3__ {int rdlen; } ;
typedef int NBTNsResourceNULL ;
typedef TYPE_1__ NBTNsResource ;
typedef int NBTArguments ;


 scalar_t__ ntohs (int ) ;

__attribute__((used)) static u_char *
AliasHandleResourceNULL(
    NBTNsResource * q,
    char *pmax,
    NBTArguments * nbtarg)
{
 NBTNsResourceNULL *n;
 u_short bcount;

 (void)nbtarg;

 if (q == ((void*)0) || (char *)(q + 1) > pmax)
  return (((void*)0));


 n = (NBTNsResourceNULL *) ((u_char *) q + sizeof(NBTNsResource));


 bcount = ntohs(q->rdlen);


 while (bcount != 0) {
  if ((char *)(n + 1) > pmax) {
   n = ((void*)0);
   break;
  }
  n++;
  bcount -= sizeof(NBTNsResourceNULL);
 }
 if ((char *)(n + 1) > pmax)
  n = ((void*)0);

 return ((u_char *) n);
}
