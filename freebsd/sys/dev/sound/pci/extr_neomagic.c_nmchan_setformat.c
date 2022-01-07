
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_chinfo {int fmt; } ;
typedef int kobj_t ;


 int nm_setch (struct sc_chinfo*) ;

__attribute__((used)) static int
nmchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct sc_chinfo *ch = data;

 ch->fmt = format;
 return nm_setch(ch);
}
