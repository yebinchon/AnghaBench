
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {int xb_io_lock; int connected; } ;
typedef int device_t ;


 int BLKIF_STATE_SUSPENDED ;
 struct xbb_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
xbb_suspend(device_t dev)
{
        return (0);
}
