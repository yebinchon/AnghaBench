
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 void* malloc (unsigned int) ;
 int stderr ;

__attribute__((used)) static void *
do_malloc(unsigned int size)
{
 void *new;

 if ((new = malloc(size)) == ((void*)0)) {
  (void) fprintf(stderr, "fortune: out of memory.\n");
  exit(1);
 }

 return (new);
}
