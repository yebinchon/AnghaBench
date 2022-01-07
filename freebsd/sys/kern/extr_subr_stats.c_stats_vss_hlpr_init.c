
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct voistatspec {int (* hlpr ) (int,struct voistatspec*,int ) ;int hlprinfo; } ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;


 int stub1 (int,struct voistatspec*,int ) ;

int
stats_vss_hlpr_init(enum vsd_dtype voi_dtype, uint32_t nvss,
    struct voistatspec *vss)
{
 int i, ret;

 for (i = nvss - 1; i >= 0; i--) {
  if (vss[i].hlpr && (ret = vss[i].hlpr(voi_dtype, &vss[i],
      vss[i].hlprinfo)) != 0)
   return (ret);
 }

 return (0);
}
