
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int open; } ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int TW_INT32 ;


 int TW_CL_FALSE ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;

__attribute__((used)) static TW_INT32
twa_close(struct cdev *dev, TW_INT32 flags, TW_INT32 fmt, struct thread *proc)
{
 struct twa_softc *sc = (struct twa_softc *)(dev->si_drv1);

 tw_osli_dbg_dprintf(5, sc, "entered");
 sc->open = TW_CL_FALSE;
 return(0);
}
