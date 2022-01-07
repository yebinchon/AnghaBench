
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sb_chinfo {int fmt; } ;
typedef int kobj_t ;



__attribute__((used)) static int
sbchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct sb_chinfo *ch = data;

 ch->fmt = format;
 return 0;
}
