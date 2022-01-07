
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct TYPE_3__ {int rdlen; } ;
typedef int NBTNsResourceNBSTAT ;
typedef TYPE_1__ NBTNsResource ;
typedef int NBTArguments ;


 int ntohs (int ) ;

__attribute__((used)) static u_char *
AliasHandleResourceNBSTAT(
    NBTNsResource * q,
    char *pmax,
    NBTArguments * nbtarg)
{
 NBTNsResourceNBSTAT *n;
 u_short bcount;

 (void)nbtarg;

 if (q == ((void*)0) || (char *)(q + 1) > pmax)
  return (((void*)0));


 n = (NBTNsResourceNBSTAT *) ((u_char *) q + sizeof(NBTNsResource));


 bcount = ntohs(q->rdlen);

 if (q == ((void*)0) || (char *)((u_char *) n + bcount) > pmax)
  return (((void*)0));
 else
  return ((u_char *) n + bcount);
}
