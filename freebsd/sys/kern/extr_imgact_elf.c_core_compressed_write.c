
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coredump_params {int dummy; } ;
typedef int off_t ;


 int UIO_SYSSPACE ;
 int core_write (struct coredump_params*,void*,size_t,int ,int ) ;

__attribute__((used)) static int
core_compressed_write(void *base, size_t len, off_t offset, void *arg)
{

 return (core_write((struct coredump_params *)arg, base, len, offset,
     UIO_SYSSPACE));
}
