
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {int io_task; int io_taskqueue; } ;


 int FILTER_HANDLED ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
xbb_filter(void *arg)
{
 struct xbb_softc *xbb;


 xbb = (struct xbb_softc *)arg;
 taskqueue_enqueue(xbb->io_taskqueue, &xbb->io_task);

 return (FILTER_HANDLED);
}
