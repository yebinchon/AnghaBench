
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_rchinfo {int hwptr; scalar_t__ stereo; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
aggrch_getptr(kobj_t obj, void *sc)
{
 struct agg_rchinfo *ch = sc;

 return ch->stereo? ch->hwptr << 2 : ch->hwptr << 1;
}
