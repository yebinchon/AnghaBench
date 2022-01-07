
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {scalar_t__ nameunit; int * sysctl_tree; TYPE_2__* devclass; } ;


 scalar_t__ strlen (int ) ;
 int sysctl_rename_oid (int *,scalar_t__) ;

__attribute__((used)) static void
device_sysctl_update(device_t dev)
{
 devclass_t dc = dev->devclass;

 if (dev->sysctl_tree == ((void*)0))
  return;
 sysctl_rename_oid(dev->sysctl_tree, dev->nameunit + strlen(dc->name));
}
