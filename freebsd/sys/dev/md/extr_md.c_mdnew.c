
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {int type; int unit; int queue_mtx; int stat_mtx; int name; int procp; int bio_queue; } ;
typedef enum md_types { ____Placeholder_md_types } md_types ;


 int EBUSY ;
 int LIST_INSERT_HEAD (int *,struct md_s*,int ) ;
 int LIST_REMOVE (struct md_s*,int ) ;
 int MTX_DEF ;
 int M_MD ;
 int M_WAITOK ;
 int M_ZERO ;
 int alloc_unr (int ) ;
 int alloc_unr_specific (int ,int) ;
 int bioq_init (int *) ;
 int free (struct md_s*,int ) ;
 int free_unr (int ,int) ;
 int kproc_create (int ,struct md_s*,int *,int ,int ,char*,int ) ;
 int list ;
 scalar_t__ malloc (int,int ,int) ;
 int md_kthread ;
 int md_softc_list ;
 int md_uh ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static struct md_s *
mdnew(int unit, int *errp, enum md_types type)
{
 struct md_s *sc;
 int error;

 *errp = 0;
 if (unit == -1)
  unit = alloc_unr(md_uh);
 else
  unit = alloc_unr_specific(md_uh, unit);

 if (unit == -1) {
  *errp = EBUSY;
  return (((void*)0));
 }

 sc = (struct md_s *)malloc(sizeof *sc, M_MD, M_WAITOK | M_ZERO);
 sc->type = type;
 bioq_init(&sc->bio_queue);
 mtx_init(&sc->queue_mtx, "md bio queue", ((void*)0), MTX_DEF);
 mtx_init(&sc->stat_mtx, "md stat", ((void*)0), MTX_DEF);
 sc->unit = unit;
 sprintf(sc->name, "md%d", unit);
 LIST_INSERT_HEAD(&md_softc_list, sc, list);
 error = kproc_create(md_kthread, sc, &sc->procp, 0, 0,"%s", sc->name);
 if (error == 0)
  return (sc);
 LIST_REMOVE(sc, list);
 mtx_destroy(&sc->stat_mtx);
 mtx_destroy(&sc->queue_mtx);
 free_unr(md_uh, sc->unit);
 free(sc, M_MD);
 *errp = error;
 return (((void*)0));
}
