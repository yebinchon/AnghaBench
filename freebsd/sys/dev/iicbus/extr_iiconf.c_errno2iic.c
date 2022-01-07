
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IIC_ERRNO ;

int
errno2iic(int errno)
{
 return ((errno == 0) ? 0 : errno | IIC_ERRNO);
}
