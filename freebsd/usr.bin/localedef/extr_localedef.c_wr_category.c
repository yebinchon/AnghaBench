
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int category_file () ;
 int errf (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int fwrite (void*,size_t,int,int *) ;
 int strerror (int ) ;
 int unlink (int ) ;

int
wr_category(void *buf, size_t sz, FILE *f)
{
 if (!sz) {
  return (0);
 }
 if (fwrite(buf, sz, 1, f) < 1) {
  (void) fclose(f);
  (void) unlink(category_file());
  errf("%s", strerror(errno));
  return (EOF);
 }
 return (0);
}
