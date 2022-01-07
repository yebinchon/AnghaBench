
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int pread (int,void*,size_t,int ) ;

__attribute__((used)) static ssize_t
pread_wrapper(int d, void *buf, size_t nbytes)
{

 return (pread(d, buf, nbytes, 0));
}
