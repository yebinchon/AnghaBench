
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_rchinfo {int buffer; struct tr_info* parent; } ;
struct tr_info {int dummy; } ;
typedef int kobj_t ;


 int TR_REG_SBBL ;
 int TR_REG_SBCTRL ;
 int sndbuf_runsz (int ) ;
 int tr_fmttobits (int) ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static int
trrchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct tr_rchinfo *ch = data;
 struct tr_info *tr = ch->parent;
 u_int32_t i, bits;

 bits = tr_fmttobits(format);

 i = (sndbuf_runsz(ch->buffer) >> ((bits & 0x08)? 1 : 0)) - 1;
 tr_wr(tr, TR_REG_SBBL, i | (i << 16), 4);

 i = 0x18 | (bits << 4);
 tr_wr(tr, TR_REG_SBCTRL, i, 1);

 return 0;
}
