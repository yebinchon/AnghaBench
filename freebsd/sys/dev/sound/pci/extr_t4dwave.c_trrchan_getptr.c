
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tr_rchinfo {int buffer; struct tr_info* parent; } ;
struct tr_info {int dummy; } ;
typedef int kobj_t ;


 int TR_REG_DMAR0 ;
 scalar_t__ sndbuf_getbufaddr (int ) ;
 scalar_t__ tr_rd (struct tr_info*,int ,int) ;

__attribute__((used)) static u_int32_t
trrchan_getptr(kobj_t obj, void *data)
{
  struct tr_rchinfo *ch = data;
 struct tr_info *tr = ch->parent;


 return tr_rd(tr, TR_REG_DMAR0, 4) - sndbuf_getbufaddr(ch->buffer);
}
