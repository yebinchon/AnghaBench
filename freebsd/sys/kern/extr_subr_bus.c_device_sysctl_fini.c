
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {int * sysctl_tree; int sysctl_ctx; } ;


 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
device_sysctl_fini(device_t dev)
{
 if (dev->sysctl_tree == ((void*)0))
  return;
 sysctl_ctx_free(&dev->sysctl_ctx);
 dev->sysctl_tree = ((void*)0);
}
