
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ADM6996FC_WRITEREG (int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
adm6996fc_writereg(device_t dev, int addr, int value)
{
 int err;

 err = ADM6996FC_WRITEREG(device_get_parent(dev), addr, value);
 return (err);
}
