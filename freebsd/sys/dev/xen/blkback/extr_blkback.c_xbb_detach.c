
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {int lock; int * dev_name; int * dev_type; int * dev_mode; int * xbb_stats_in; int * xbb_stats; int * io_taskqueue; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 scalar_t__ EAGAIN ;
 int M_XENSTORE ;
 struct xbb_softc* device_get_softc (int ) ;
 int devstat_remove_entry (int *) ;
 int free (int *,int ) ;
 int msleep (struct xbb_softc*,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_free (int *) ;
 int xbb_close_backend (struct xbb_softc*) ;
 scalar_t__ xbb_shutdown (struct xbb_softc*) ;

__attribute__((used)) static int
xbb_detach(device_t dev)
{
        struct xbb_softc *xbb;

 DPRINTF("\n");

        xbb = device_get_softc(dev);
 mtx_lock(&xbb->lock);
 while (xbb_shutdown(xbb) == EAGAIN) {
  msleep(xbb, &xbb->lock, 0,
         "xbb_shutdown", 0);
 }
 mtx_unlock(&xbb->lock);

 DPRINTF("\n");

 if (xbb->io_taskqueue != ((void*)0))
  taskqueue_free(xbb->io_taskqueue);

 if (xbb->xbb_stats != ((void*)0))
  devstat_remove_entry(xbb->xbb_stats);

 if (xbb->xbb_stats_in != ((void*)0))
  devstat_remove_entry(xbb->xbb_stats_in);

 xbb_close_backend(xbb);

 if (xbb->dev_mode != ((void*)0)) {
  free(xbb->dev_mode, M_XENSTORE);
  xbb->dev_mode = ((void*)0);
 }

 if (xbb->dev_type != ((void*)0)) {
  free(xbb->dev_type, M_XENSTORE);
  xbb->dev_type = ((void*)0);
 }

 if (xbb->dev_name != ((void*)0)) {
  free(xbb->dev_name, M_XENSTORE);
  xbb->dev_name = ((void*)0);
 }

 mtx_destroy(&xbb->lock);
        return (0);
}
