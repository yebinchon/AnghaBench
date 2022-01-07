
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct tuntap_softc {int tun_mtx; TYPE_1__ tun_rsel; struct cdev* tun_dev; struct tuntap_driver* tun_drv; int tun_flags; int tun_cv; } ;
struct tuntap_driver {int cdevsw; int ident_flags; } ;
struct make_dev_args {int mda_mode; int mda_unit; struct tuntap_softc* mda_si_drv1; int mda_gid; int mda_uid; struct ucred* mda_cr; int * mda_devsw; int mda_flags; } ;
struct cdev {int * si_drv1; } ;


 int GID_DIALER ;
 int KASSERT (int ,char*) ;
 int MAKEDEV_REF ;
 int MTX_DEF ;
 int M_TUN ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct tuntap_softc*,int ) ;
 int UID_UUCP ;
 int cv_init (int *,char*) ;
 int free (struct tuntap_softc*,int ) ;
 int knlist_init_mtx (int *,int *) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,struct cdev**,char*,char const*) ;
 struct tuntap_softc* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tun_list ;
 int tunhead ;
 int tunmtx ;

__attribute__((used)) static int
tun_create_device(struct tuntap_driver *drv, int unit, struct ucred *cr,
    struct cdev **dev, const char *name)
{
 struct make_dev_args args;
 struct tuntap_softc *tp;
 int error;

 tp = malloc(sizeof(*tp), M_TUN, M_WAITOK | M_ZERO);
 mtx_init(&tp->tun_mtx, "tun_mtx", ((void*)0), MTX_DEF);
 cv_init(&tp->tun_cv, "tun_condvar");
 tp->tun_flags = drv->ident_flags;
 tp->tun_drv = drv;

 make_dev_args_init(&args);
 if (cr != ((void*)0))
  args.mda_flags = MAKEDEV_REF;
 args.mda_devsw = &drv->cdevsw;
 args.mda_cr = cr;
 args.mda_uid = UID_UUCP;
 args.mda_gid = GID_DIALER;
 args.mda_mode = 0600;
 args.mda_unit = unit;
 args.mda_si_drv1 = tp;
 error = make_dev_s(&args, dev, "%s", name);
 if (error != 0) {
  free(tp, M_TUN);
  return (error);
 }

 KASSERT((*dev)->si_drv1 != ((void*)0),
     ("Failed to set si_drv1 at %s creation", name));
 tp->tun_dev = *dev;
 knlist_init_mtx(&tp->tun_rsel.si_note, &tp->tun_mtx);
 mtx_lock(&tunmtx);
 TAILQ_INSERT_TAIL(&tunhead, tp, tun_list);
 mtx_unlock(&tunmtx);
 return (0);
}
