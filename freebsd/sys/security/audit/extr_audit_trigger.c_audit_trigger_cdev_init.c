
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDITDEV_FILENAME ;
 int GID_KMEM ;
 int UID_ROOT ;
 int audit_cdevsw ;
 int audit_dev ;
 int make_dev (int *,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
audit_trigger_cdev_init(void *unused)
{


 audit_dev = make_dev(&audit_cdevsw, 0, UID_ROOT, GID_KMEM, 0600,
     AUDITDEV_FILENAME);
}
