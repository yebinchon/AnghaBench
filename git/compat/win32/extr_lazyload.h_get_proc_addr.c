
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_addr {int initialized; void* pfunction; int function; int dll; } ;
typedef scalar_t__ HANDLE ;


 int ENOSYS ;
 void* GetProcAddress (scalar_t__,int ) ;
 int LOAD_LIBRARY_SEARCH_SYSTEM32 ;
 scalar_t__ LoadLibraryExA (int ,int *,int ) ;
 int errno ;

__attribute__((used)) static inline void *get_proc_addr(struct proc_addr *proc)
{

 if (!proc->initialized) {
  HANDLE hnd;
  proc->initialized = 1;
  hnd = LoadLibraryExA(proc->dll, ((void*)0),
         LOAD_LIBRARY_SEARCH_SYSTEM32);
  if (hnd)
   proc->pfunction = GetProcAddress(hnd, proc->function);
 }

 if (!proc->pfunction)
  errno = ENOSYS;
 return proc->pfunction;
}
