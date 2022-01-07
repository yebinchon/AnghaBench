
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int errx (int ,char*) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
xrealloc(void *ptr, size_t nbytes)
{
 void *p = realloc(ptr, nbytes);

 if (p == ((void*)0))
  errx(EX_OSERR, "out of memory");
 return p;
}
