
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ feof (int *) ;
 size_t fread (void*,size_t,int,int *) ;
 int free (void*) ;
 int fseek (int *,scalar_t__,int ) ;
 void* malloc (size_t) ;
 int warn (char*,...) ;

void *
read_buf(FILE *fp, off_t off, size_t len)
{
 int error;
 size_t nread;
 void *buf;

 error = fseek(fp, off, SEEK_SET);
 if (error != 0) {
  warn("cannot seek to %jd", (uintmax_t)off);
  return (((void*)0));
 }

 buf = malloc(len);
 if (buf == ((void*)0)) {
  warn("cannot malloc %zd bytes of memory", len);
  return (((void*)0));
 }

 nread = fread(buf, len, 1, fp);
 if (nread != 1) {
  free(buf);
  if (feof(fp) == 0)
   warn("fread");
  return (((void*)0));
 }

 return (buf);
}
