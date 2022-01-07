
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int ptr; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef int kobj_t ;


 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;

__attribute__((used)) static u_int32_t
m3_pchan_getptr(kobj_t kobj, void *chdata)
{
 struct sc_pchinfo *ch = chdata;
 struct sc_info *sc = ch->parent;
 u_int32_t ptr;

 M3_LOCK(sc);
 ptr = ch->ptr;
 M3_UNLOCK(sc);

 return (ptr);
}
