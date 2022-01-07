
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct agg_rchinfo {int speed; int blklen; int stereo; } ;


 int printf (char*) ;

__attribute__((used)) static u_int
calc_timer_div_rch(struct agg_rchinfo *ch)
{
 u_int speed;

 speed = ch->speed;






 return (48000 * (ch->blklen << (!ch->stereo))
  + speed - 1) / speed;
}
