
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int mediasize; int name; struct g_llvm_lv* private; int sectorsize; } ;
struct g_llvm_vg {int vg_extentsize; int vg_sectorsize; int vg_name; struct g_geom* vg_geom; } ;
struct g_llvm_lv {scalar_t__ lv_sgactive; scalar_t__ lv_sgcount; struct g_provider* lv_gprov; scalar_t__ lv_extentcount; int lv_name; } ;
struct g_geom {int dummy; } ;
typedef int off_t ;


 int G_LLVM_DEBUG (int,char*,int ,int) ;
 int KASSERT (int,char*) ;
 int g_error_provider (struct g_provider*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,int ,int ) ;
 int g_topology_assert () ;

__attribute__((used)) static int
g_llvm_activate_lv(struct g_llvm_vg *vg, struct g_llvm_lv *lv)
{
 struct g_geom *gp;
 struct g_provider *pp;

 g_topology_assert();

 KASSERT(lv->lv_sgactive == lv->lv_sgcount, ("segment missing"));

 gp = vg->vg_geom;
 pp = g_new_providerf(gp, "linux_lvm/%s-%s", vg->vg_name, lv->lv_name);
 pp->mediasize = vg->vg_extentsize * (off_t)lv->lv_extentcount;
 pp->sectorsize = vg->vg_sectorsize;
 g_error_provider(pp, 0);
 lv->lv_gprov = pp;
 pp->private = lv;

 G_LLVM_DEBUG(1, "Created %s, %juM", pp->name,
     pp->mediasize / (1024*1024));

 return (0);
}
