
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int errno ;
 int scratch_file ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int
copyin_checker(uintptr_t uaddr, size_t len)
{
 ssize_t ret;

 ret = write(scratch_file, (const void *)uaddr, len);
 return (ret == -1 ? errno : 0);
}
