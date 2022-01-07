
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* tcp; } ;
struct alias_link {TYPE_2__ data; int expire_time; } ;
struct TYPE_4__ {int out; int in; } ;
struct TYPE_6__ {TYPE_1__ state; } ;




 int TCP_EXPIRE_CONNECTED ;
 int TCP_EXPIRE_DEAD ;
 int TCP_EXPIRE_SINGLEDEAD ;
 int abort () ;
 int panic (char*) ;

void
SetStateIn(struct alias_link *lnk, int state)
{

 switch (state) {
  case 128:
  if (lnk->data.tcp->state.out != 129)
   lnk->expire_time = TCP_EXPIRE_DEAD;
  else
   lnk->expire_time = TCP_EXPIRE_SINGLEDEAD;
  break;
 case 129:
  if (lnk->data.tcp->state.out == 129)
   lnk->expire_time = TCP_EXPIRE_CONNECTED;
  break;
 default:



  abort();

 }
 lnk->data.tcp->state.in = state;
}
