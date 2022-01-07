
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ NBTNsResource ;
typedef int NBTArguments ;


 scalar_t__ AliasHandleName (int *,char*) ;
 scalar_t__ AliasHandleResourceA (TYPE_1__*,char*,int *) ;
 scalar_t__ AliasHandleResourceNB (TYPE_1__*,char*,int *) ;
 scalar_t__ AliasHandleResourceNBSTAT (TYPE_1__*,char*,int *) ;
 scalar_t__ AliasHandleResourceNS (TYPE_1__*,char*,int *) ;
 scalar_t__ AliasHandleResourceNULL (TYPE_1__*,char*,int *) ;





 int fflush (int ) ;
 int ntohs (int ) ;
 int printf (char*,int,...) ;
 int stdout ;

__attribute__((used)) static u_char *
AliasHandleResource(
    u_short count,
    NBTNsResource * q,
    char *pmax,
    NBTArguments
    * nbtarg)
{
 while (count != 0) {

  q = (NBTNsResource *) AliasHandleName((u_char *) q, pmax);

  if (q == ((void*)0) || (char *)(q + 1) > pmax)
   break;





  switch (ntohs(q->type)) {
  case 131:
   q = (NBTNsResource *) AliasHandleResourceNB(
       q,
       pmax,
       nbtarg
       );
   break;
  case 132:
   q = (NBTNsResource *) AliasHandleResourceA(
       q,
       pmax,
       nbtarg
       );
   break;
  case 129:
   q = (NBTNsResource *) AliasHandleResourceNS(
       q,
       pmax,
       nbtarg
       );
   break;
  case 128:
   q = (NBTNsResource *) AliasHandleResourceNULL(
       q,
       pmax,
       nbtarg
       );
   break;
  case 130:
   q = (NBTNsResource *) AliasHandleResourceNBSTAT(
       q,
       pmax,
       nbtarg
       );
   break;
  default:







   break;
  }
  count--;
 }
 return ((u_char *) q);
}
