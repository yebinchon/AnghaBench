
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int UID_ROOT ;
 int ffs_susp_cdevsw ;
 int ffs_susp_dev ;
 int ffs_susp_lock ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int sx_init (int *,char*) ;

void
ffs_susp_initialize(void)
{

 sx_init(&ffs_susp_lock, "ffs_susp");
 ffs_susp_dev = make_dev(&ffs_susp_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "ufssuspend");
}
