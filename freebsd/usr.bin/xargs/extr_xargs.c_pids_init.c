
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * childpids ;
 int clearslot (int) ;
 int errx (int,char*) ;
 int * malloc (int) ;
 int maxprocs ;

__attribute__((used)) static void
pids_init(void)
{
 int i;

 if ((childpids = malloc(maxprocs * sizeof(*childpids))) == ((void*)0))
  errx(1, "malloc failed");

 for (i = 0; i < maxprocs; i++)
  clearslot(i);
}
