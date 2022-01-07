
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; int num; TYPE_1__* board; int type; int port; } ;
typedef TYPE_2__ cx_chan_t ;
struct TYPE_4__ {scalar_t__ type; int port; } ;


 int BSR (int ) ;
 scalar_t__ B_SIGMA_2X ;
 scalar_t__ B_SIGMA_800 ;
 int CAR (int ) ;
 int MSVR (int ) ;
 int MSV_CD ;
 scalar_t__ M_ASYNC ;
 int T_UNIV_RS232 ;
 int inb (int ) ;
 int inw (int ) ;
 int outb (int ,int) ;

int cx_get_cd (cx_chan_t *c)
{
 unsigned char sigval;

 if (c->board->type == B_SIGMA_2X ||
     c->board->type == B_SIGMA_800 ||
     c->mode == M_ASYNC) {
  outb (CAR(c->port), c->num & 3);
  return (inb (MSVR(c->port)) & MSV_CD ? 1 : 0);
 }




 switch (c->num) {
 default:
  return (1);

 case 1: case 2: case 3:
  if (c->type == T_UNIV_RS232)
   return (1);
 case 0:
  sigval = inw (BSR(c->board->port)) >> 8;
  break;

 case 9: case 10: case 11:
  if (c->type == T_UNIV_RS232)
   return (1);
 case 8:
  sigval = inw (BSR(c->board->port+0x10)) >> 8;
  break;
 }
 return (~sigval >> 4 >> (c->num & 3) & 1);
}
