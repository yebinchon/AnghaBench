
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_chinfo {int ctrl; } ;
typedef int kobj_t ;


 int tr_fmttobits (int ) ;

__attribute__((used)) static int
trpchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct tr_chinfo *ch = data;

 ch->ctrl = tr_fmttobits(format) | 0x01;

 return 0;
}
