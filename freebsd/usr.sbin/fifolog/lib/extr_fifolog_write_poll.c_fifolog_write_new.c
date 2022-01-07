
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_writer {int dummy; } ;


 int ALLOC_OBJ (struct fifolog_writer*,int ) ;
 int FIFOLOG_WRITER_MAGIC ;
 int assert (int ) ;

struct fifolog_writer *
fifolog_write_new(void)
{
 struct fifolog_writer *f;

 ALLOC_OBJ(f, FIFOLOG_WRITER_MAGIC);
 assert(f != ((void*)0));
 return (f);
}
