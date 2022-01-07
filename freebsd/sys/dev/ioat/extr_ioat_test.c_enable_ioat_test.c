
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int Giant ;
 int MA_OWNED ;
 int UID_ROOT ;
 int destroy_dev (int *) ;
 int * g_ioat_cdev ;
 int ioat_cdevsw ;
 int * make_dev (int *,int ,int ,int ,int,char*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
enable_ioat_test(bool enable)
{

 mtx_assert(&Giant, MA_OWNED);

 if (enable && g_ioat_cdev == ((void*)0)) {
  g_ioat_cdev = make_dev(&ioat_cdevsw, 0, UID_ROOT, GID_WHEEL,
      0600, "ioat_test");
 } else if (!enable && g_ioat_cdev != ((void*)0)) {
  destroy_dev(g_ioat_cdev);
  g_ioat_cdev = ((void*)0);
 }
 return (0);
}
