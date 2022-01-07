
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_device {int (* query_pkey ) (struct ib_device*,int ,int ,int *) ;} ;


 int stub1 (struct ib_device*,int ,int ,int *) ;

int ib_query_pkey(struct ib_device *device,
    u8 port_num, u16 index, u16 *pkey)
{
 return device->query_pkey(device, port_num, index, pkey);
}
