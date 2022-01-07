
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_ctx_list {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {struct sysctl_ctx_list sysctl_ctx; } ;



struct sysctl_ctx_list *
device_get_sysctl_ctx(device_t dev)
{
 return (&dev->sysctl_ctx);
}
