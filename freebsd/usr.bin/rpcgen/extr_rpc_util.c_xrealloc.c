
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash () ;
 void* realloc (void*,size_t) ;
 int warnx (char*) ;

void *
xrealloc(void *ptr, size_t size)
{
 void *p;

 if ((p = realloc(ptr, size)) == ((void*)0)) {
  warnx("realloc failed");
  crash();
 }
 return (p);
}
