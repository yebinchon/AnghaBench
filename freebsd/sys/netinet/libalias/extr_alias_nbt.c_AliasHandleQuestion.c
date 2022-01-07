
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ NBTNsQuestion ;
typedef int NBTArguments ;


 scalar_t__ AliasHandleName (int *,char*) ;


 int ntohs (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static u_char *
AliasHandleQuestion(
    u_short count,
    NBTNsQuestion * q,
    char *pmax,
    NBTArguments * nbtarg)
{

 (void)nbtarg;

 while (count != 0) {

  q = (NBTNsQuestion *) AliasHandleName((u_char *) q, pmax);

  if (q == ((void*)0) || (char *)(q + 1) > pmax) {
   q = ((void*)0);
   break;
  }

  switch (ntohs(q->type)) {
  case 129:
  case 128:
   q = q + 1;
   break;
  default:



   break;
  }
  count--;
 }


 return ((u_char *) q);
}
