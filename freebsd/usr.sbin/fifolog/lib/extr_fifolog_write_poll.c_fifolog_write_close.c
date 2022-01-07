
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct fifolog_writer {int cleanup; int ff; } ;


 int CHECK_OBJ_NOTNULL (struct fifolog_writer*,int ) ;
 int FIFOLOG_WRITER_MAGIC ;
 int fifolog_int_close (int *) ;
 int fifolog_write_assert (struct fifolog_writer*) ;
 int fifolog_write_gzip (struct fifolog_writer*,int ) ;
 int free (int ) ;
 int time (int *) ;

void
fifolog_write_close(struct fifolog_writer *f)
{
 time_t now;

 CHECK_OBJ_NOTNULL(f, FIFOLOG_WRITER_MAGIC);
 fifolog_write_assert(f);

 f->cleanup = 1;
 time(&now);
 fifolog_write_gzip(f, now);
 fifolog_write_assert(f);
 fifolog_int_close(&f->ff);
 free(f->ff);
}
