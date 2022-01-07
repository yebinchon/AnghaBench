
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * caddr_t ;


 void stub1 () ;

__attribute__((used)) static void
link_elf_invoke_ctors(caddr_t addr, size_t size)
{
 void (**ctor)(void);
 size_t i, cnt;

 if (addr == ((void*)0) || size == 0)
  return;
 cnt = size / sizeof(*ctor);
 ctor = (void *)addr;
 for (i = 0; i < cnt; i++) {
  if (ctor[i] != ((void*)0))
   (*ctor[i])();
 }
}
