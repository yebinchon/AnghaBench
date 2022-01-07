
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_dirent {TYPE_1__* de_cdp; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int cdp_flags; struct cdev cdp_c; } ;


 int CDP_ACTIVE ;

__attribute__((used)) static struct cdev *
devfs_rule_getdev(struct devfs_dirent *de)
{

 if (de->de_cdp == ((void*)0))
  return (((void*)0));
 if (de->de_cdp->cdp_flags & CDP_ACTIVE)
  return (&de->de_cdp->cdp_c);
 else
  return (((void*)0));
}
