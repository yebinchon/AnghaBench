
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coredump_params {int * comp; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int p_comm; } ;


 int EFAULT ;
 int LOG_WARNING ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int compress_chunk (struct coredump_params*,void*,void*,size_t) ;
 int core_write (struct coredump_params*,void*,int,scalar_t__,int ) ;
 TYPE_1__* curproc ;
 int log (int ,char*,void*,size_t,scalar_t__,int ) ;
 void* zero_region ;

__attribute__((used)) static int
core_output(void *base, size_t len, off_t offset, struct coredump_params *p,
    void *tmpbuf)
{
 int error;

 if (p->comp != ((void*)0))
  return (compress_chunk(p, base, tmpbuf, len));






 error = core_write(p, base, len, offset, UIO_USERSPACE);
 if (error == EFAULT) {
  log(LOG_WARNING, "Failed to fully fault in a core file segment "
      "at VA %p with size 0x%zx to be written at offset 0x%jx "
      "for process %s\n", base, len, offset, curproc->p_comm);






  error = core_write(p, zero_region, 1, offset + len - 1,
      UIO_SYSSPACE);
 }
 return (error);
}
