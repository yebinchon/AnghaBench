
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num; int type; TYPE_1__* board; } ;
typedef TYPE_2__ cx_chan_t ;
struct TYPE_4__ {scalar_t__ type; int if0type; int if8type; } ;


 scalar_t__ B_SIGMA_XXX ;



int cx_get_port (cx_chan_t *c)
{
 int iftype;

 if (c->board->type == B_SIGMA_XXX) {
  switch (c->num) {
  case 0:
   iftype = c->board->if0type; break;
  case 8:
   iftype = c->board->if8type; break;
  default:
   return -1;
  }

  if (iftype)
   switch (c->type) {
   case 128: return 1;
   case 129: return 2;
   default: return -1;
   }
  else
   return 0;
 } else
  return -1;
}
