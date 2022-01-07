
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int * reg_base; int dev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
nicpf_free_res(struct nicpf *nic)
{
 device_t dev;

 dev = nic->dev;

 if (nic->reg_base != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(nic->reg_base), nic->reg_base);
 }
}
