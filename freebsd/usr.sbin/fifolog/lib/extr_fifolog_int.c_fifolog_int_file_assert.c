
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {scalar_t__ fd; int * recbuf; } ;


 int CHECK_OBJ_NOTNULL (struct fifolog_file const*,int ) ;
 int FIFOLOG_FILE_MAGIC ;
 int assert (int) ;

__attribute__((used)) static void
fifolog_int_file_assert(const struct fifolog_file *ff)
{

 CHECK_OBJ_NOTNULL(ff, FIFOLOG_FILE_MAGIC);
 assert(ff->fd >= 0);
 assert(ff->recbuf != ((void*)0));
}
