
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WTAPIOCTLCRT ;
 int dev ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int printf (char*,int) ;

__attribute__((used)) static void create(int id)
{
    if(ioctl(dev, WTAPIOCTLCRT, &id) < 0){
 printf("error creating wtap with id=%d\n", id);
    }
}
