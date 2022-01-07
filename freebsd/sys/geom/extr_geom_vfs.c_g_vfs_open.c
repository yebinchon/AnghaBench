
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int bo_bsize; struct vnode* bo_private; int bo_ops; } ;
struct vnode {int flags; struct vnode* private; int v_rdev; struct bufobj v_bufobj; } ;
struct g_vfs_softc {struct bufobj* sc_bo; int sc_mtx; } ;
struct g_provider {int sectorsize; int mediasize; int name; } ;
struct g_geom {struct g_vfs_softc* softc; } ;
struct g_consumer {int flags; struct g_consumer* private; int v_rdev; struct bufobj v_bufobj; } ;


 int EBUSY ;
 int ENOENT ;
 int ENXIO ;
 int G_CF_DIRECT_RECEIVE ;
 int G_CF_DIRECT_SEND ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int curthread ;
 int g_access (struct vnode*,int,int,int) ;
 int g_attach (struct vnode*,struct g_provider*) ;
 struct g_provider* g_dev_getprovider (int ) ;
 struct g_vfs_softc* g_malloc (int,int) ;
 struct vnode* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (int *,char*,char const*,int ) ;
 int g_topology_assert () ;
 int g_vfs_bufops ;
 int g_vfs_class ;
 int g_wither_geom (struct g_geom*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

int
g_vfs_open(struct vnode *vp, struct g_consumer **cpp, const char *fsname, int wr)
{
 struct g_geom *gp;
 struct g_provider *pp;
 struct g_consumer *cp;
 struct g_vfs_softc *sc;
 struct bufobj *bo;
 int error;

 g_topology_assert();

 *cpp = ((void*)0);
 bo = &vp->v_bufobj;
 if (bo->bo_private != vp)
  return (EBUSY);

 pp = g_dev_getprovider(vp->v_rdev);
 if (pp == ((void*)0))
  return (ENOENT);
 gp = g_new_geomf(&g_vfs_class, "%s.%s", fsname, pp->name);
 sc = g_malloc(sizeof(*sc), M_WAITOK | M_ZERO);
 mtx_init(&sc->sc_mtx, "g_vfs", ((void*)0), MTX_DEF);
 sc->sc_bo = bo;
 gp->softc = sc;
 cp = g_new_consumer(gp);
 g_attach(cp, pp);
 error = g_access(cp, 1, wr, wr);
 if (error) {
  g_wither_geom(gp, ENXIO);
  return (error);
 }
 vnode_create_vobject(vp, pp->mediasize, curthread);
 *cpp = cp;
 cp->private = vp;
 cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
 bo->bo_ops = g_vfs_bufops;
 bo->bo_private = cp;
 bo->bo_bsize = pp->sectorsize;

 return (error);
}
