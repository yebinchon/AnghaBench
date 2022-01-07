
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_file {int fd; int magic; } ;


 int FIFOLOG_FILE_MAGIC ;
 int errno ;
 int fifolog_int_close (struct fifolog_file**) ;
 char* fifolog_int_open_i (struct fifolog_file*,char const*,int) ;
 struct fifolog_file* malloc (int) ;
 int memcpy (struct fifolog_file*,struct fifolog_file*,int) ;
 int memset (struct fifolog_file*,int ,int) ;

const char *
fifolog_int_open(struct fifolog_file **ff, const char *fname, int mode)
{
 struct fifolog_file fs, *f;
 const char *retval;
 int e;

 f = &fs;
 memset(f, 0, sizeof *f);
 f->fd = -1;
 retval = fifolog_int_open_i(f, fname, mode);
 e = errno;
 if (retval == ((void*)0)) {
  *ff = malloc(sizeof *f);
  if (*ff != ((void*)0)) {
   memcpy(*ff, f, sizeof *f);
   (*ff)->magic = FIFOLOG_FILE_MAGIC;
   return (retval);
  }
 }
 fifolog_int_close(&f);
 errno = e;
 return (retval);
}
