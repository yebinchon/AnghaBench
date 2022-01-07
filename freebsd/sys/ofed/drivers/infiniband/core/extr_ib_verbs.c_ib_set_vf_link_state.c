
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int (* set_vf_link_state ) (struct ib_device*,int,int ,int) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_device*,int,int ,int) ;

int ib_set_vf_link_state(struct ib_device *device, int vf, u8 port,
    int state)
{
 if (!device->set_vf_link_state)
  return -ENOSYS;

 return device->set_vf_link_state(device, vf, port, state);
}
