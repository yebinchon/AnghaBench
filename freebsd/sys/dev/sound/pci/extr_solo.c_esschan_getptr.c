
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ess_info {int dummy; } ;
struct ess_chinfo {int hwch; struct ess_info* parent; } ;
typedef int kobj_t ;


 int ess_dmapos (struct ess_info*,int ) ;
 int ess_lock (struct ess_info*) ;
 int ess_unlock (struct ess_info*) ;

__attribute__((used)) static u_int32_t
esschan_getptr(kobj_t obj, void *data)
{
 struct ess_chinfo *ch = data;
 struct ess_info *sc = ch->parent;
 u_int32_t ret;

 ess_lock(sc);
 ret = ess_dmapos(sc, ch->hwch);
 ess_unlock(sc);
 return ret;
}
