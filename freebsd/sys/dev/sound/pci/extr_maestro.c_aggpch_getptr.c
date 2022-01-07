
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_chinfo {int num; int phys; int base; scalar_t__ stereo; scalar_t__ qs16; int parent; } ;
typedef int kobj_t ;


 int APUREG_CURPTR ;
 int agg_lock (int ) ;
 int agg_unlock (int ) ;
 int wp_rdapu (int ,int,int ) ;

__attribute__((used)) static u_int32_t
aggpch_getptr(kobj_t obj, void *data)
{
 struct agg_chinfo *ch = data;
 u_int32_t cp;

 agg_lock(ch->parent);
 cp = wp_rdapu(ch->parent, (ch->num << 1) | 32, APUREG_CURPTR);
 agg_unlock(ch->parent);

 return ch->qs16 && ch->stereo
  ? (cp << 2) - ((0xffff << 2) & (ch->phys - ch->base))
  : (cp << 1) - ((0xffff << 1) & (ch->phys - ch->base));
}
