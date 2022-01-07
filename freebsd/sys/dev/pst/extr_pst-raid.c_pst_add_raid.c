
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pst_softc {struct i2o_lct_entry* lct; struct iop_softc* iop; } ;
struct iop_softc {int dev; } ;
struct i2o_lct_entry {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_PSTRAID ;
 int M_ZERO ;
 int device_add_child (int ,char*,int) ;
 int device_delete_child (int ,int ) ;
 int device_probe_and_attach (int ) ;
 int device_set_softc (int ,struct pst_softc*) ;
 struct pst_softc* malloc (int,int ,int) ;

int
pst_add_raid(struct iop_softc *sc, struct i2o_lct_entry *lct)
{
    struct pst_softc *psc;
    device_t child = device_add_child(sc->dev, "pst", -1);

    if (!child)
 return ENOMEM;
    if (!(psc = malloc(sizeof(struct pst_softc),
         M_PSTRAID, M_NOWAIT | M_ZERO))) {
 device_delete_child(sc->dev, child);
 return ENOMEM;
    }
    psc->iop = sc;
    psc->lct = lct;
    device_set_softc(child, psc);
    return device_probe_and_attach(child);
}
