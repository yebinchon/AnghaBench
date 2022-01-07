
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct voistatspec {int * iv; scalar_t__ hlpr; } ;


 int stats_free (void*) ;

void
stats_vss_hlpr_cleanup(uint32_t nvss, struct voistatspec *vss)
{
 int i;

 for (i = nvss - 1; i >= 0; i--) {
  if (vss[i].hlpr) {
   stats_free((void *)vss[i].iv);
   vss[i].iv = ((void*)0);
  }
 }
}
