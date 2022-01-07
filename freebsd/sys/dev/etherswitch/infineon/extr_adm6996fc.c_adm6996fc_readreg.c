
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ADM6996FC_READREG (int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
adm6996fc_readreg(device_t dev, int addr)
{

 return ADM6996FC_READREG(device_get_parent(dev), addr);
}
