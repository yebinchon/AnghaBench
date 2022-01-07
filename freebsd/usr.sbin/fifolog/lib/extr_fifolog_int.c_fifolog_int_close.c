
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {scalar_t__ fd; int * recbuf; int * zs; } ;


 int close (scalar_t__) ;
 int free (int *) ;

void
fifolog_int_close(struct fifolog_file **ff)
{
 struct fifolog_file *f;

 f = *ff;
 *ff = ((void*)0);
 if (f == ((void*)0))
  return;

 if (f->fd >= 0)
  (void)close(f->fd);
 if (f->zs != ((void*)0))
  free(f->zs);
 if (f->recbuf != ((void*)0))
  free(f->recbuf);
}
