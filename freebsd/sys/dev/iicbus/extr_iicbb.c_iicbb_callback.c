
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int caddr_t ;


 int IICBB_CALLBACK (int ,int,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
iicbb_callback(device_t dev, int index, caddr_t data)
{
 return (IICBB_CALLBACK(device_get_parent(dev), index, data));
}
