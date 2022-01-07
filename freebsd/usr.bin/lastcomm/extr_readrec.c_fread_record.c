
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EFTYPE ;
 int EOF ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,int,size_t,int *) ;

__attribute__((used)) static int
fread_record(void *ptr, size_t size, FILE *f)
{
 size_t rv;

 if ((rv = fread(ptr, 1, size, f)) == size)
  return (0);
 else if (ferror(f) || rv == 0)
  return (EOF);
 else {

  errno = EFTYPE;
  return (EOF);
 }
}
