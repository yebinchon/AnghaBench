
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef size_t off_t ;
typedef int buf ;
typedef int FILE ;


 int err (int,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 size_t fwrite (char*,int,size_t,int ) ;
 int stdout ;

__attribute__((used)) static void
head_bytes(FILE *fp, off_t cnt)
{
 char buf[4096];
 size_t readlen;

 while (cnt) {
  if ((uintmax_t)cnt < sizeof(buf))
   readlen = cnt;
  else
   readlen = sizeof(buf);
  readlen = fread(buf, sizeof(char), readlen, fp);
  if (readlen == 0)
   break;
  if (fwrite(buf, sizeof(char), readlen, stdout) != readlen)
   err(1, "stdout");
  cnt -= readlen;
 }
}
