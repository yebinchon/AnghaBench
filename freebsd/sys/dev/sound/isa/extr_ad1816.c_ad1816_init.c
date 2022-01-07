
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int dummy; } ;
typedef int device_t ;


 int ad1816_write (struct ad1816_info*,int,int) ;

__attribute__((used)) static int
ad1816_init(struct ad1816_info *ad1816, device_t dev)
{
     ad1816_write(ad1816, 1, 0x2);
     ad1816_write(ad1816, 32, 0x90F0);

     ad1816_write(ad1816, 5, 0x8080);
     ad1816_write(ad1816, 6, 0x8080);
     ad1816_write(ad1816, 7, 0x8080);
     ad1816_write(ad1816, 17, 0x8888);
     ad1816_write(ad1816, 20, 0x5050);


 return 0;
}
