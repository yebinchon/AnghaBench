
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thread {int dummy; } ;
struct kcov_info {scalar_t__ mode; scalar_t__ kvaddr; int entries; } ;


 int KASSERT (int,char*) ;
 scalar_t__ KCOV_MODE_TRACE_PC ;
 struct thread* curthread ;
 struct kcov_info* get_kinfo (struct thread*) ;

__attribute__((used)) static void
trace_pc(uintptr_t ret)
{
 struct thread *td;
 struct kcov_info *info;
 uint64_t *buf, index;

 td = curthread;
 info = get_kinfo(td);
 if (info == ((void*)0))
  return;




 if (info->mode != KCOV_MODE_TRACE_PC)
  return;

 KASSERT(info->kvaddr != 0,
     ("__sanitizer_cov_trace_pc: NULL buf while running"));

 buf = (uint64_t *)info->kvaddr;


 index = buf[0];
 if (index + 2 > info->entries)
  return;

 buf[index + 1] = ret;
 buf[0] = index + 1;
}
