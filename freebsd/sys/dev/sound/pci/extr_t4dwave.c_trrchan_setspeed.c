
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_rchinfo {int delta; struct tr_info* parent; } ;
struct tr_info {int dummy; } ;
typedef int kobj_t ;


 int TR_REG_SBDELTA ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static u_int32_t
trrchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct tr_rchinfo *ch = data;
 struct tr_info *tr = ch->parent;


 ch->delta = (48000 << 12) / speed;
 tr_wr(tr, TR_REG_SBDELTA, ch->delta, 2);


 return (48000 << 12) / ch->delta;
}
