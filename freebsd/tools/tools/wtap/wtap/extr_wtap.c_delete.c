
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WTAPIOCTLDEL ;
 int dev ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int printf (char*,int) ;

__attribute__((used)) static void delete(int id)
{
    if(ioctl(dev, WTAPIOCTLDEL, &id) < 0){
 printf("error deleting wtap with id=%d\n", id);
    }
}
