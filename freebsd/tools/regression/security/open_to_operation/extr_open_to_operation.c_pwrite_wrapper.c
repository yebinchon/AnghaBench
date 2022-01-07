
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int pwrite (int,void const*,size_t,int ) ;

__attribute__((used)) static ssize_t
pwrite_wrapper(int d, const void *buf, size_t nbytes)
{

 return (pwrite(d, buf, nbytes, 0));
}
