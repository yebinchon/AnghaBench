
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct agg_chinfo {int speed; int num; int blklen; int stereo; int qs16; } ;


 int printf (char*,int) ;

__attribute__((used)) static u_int
calc_timer_div(struct agg_chinfo *ch)
{
 u_int speed;

 speed = ch->speed;







 return (48000 * (ch->blklen << (!ch->qs16 + !ch->stereo))
  + speed - 1) / speed;
}
