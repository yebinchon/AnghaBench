
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int device_t ;



__attribute__((used)) static int
ps3_settime(device_t dev, struct timespec *ts)
{
 return (-1);
}
