
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int CP_UTF8 ;
 int FALSE ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int ) ;
 int die (char*) ;
 int free (char*) ;
 int fwrite (char*,int,int,int ) ;
 int printf (char*,char const*) ;
 int putchar (char) ;
 int stdout ;
 char* xmalloc (int) ;

__attribute__((used)) static void write_item(const char *what, LPCWSTR wbuf, int wlen)
{
 char *buf;

 if (!wbuf || !wlen) {
  printf("%s=\n", what);
  return;
 }

 int len = WideCharToMultiByte(CP_UTF8, 0, wbuf, wlen, ((void*)0), 0, ((void*)0),
     FALSE);
 buf = xmalloc(len);

 if (!WideCharToMultiByte(CP_UTF8, 0, wbuf, wlen, buf, len, ((void*)0), FALSE))
  die("WideCharToMultiByte failed!");

 printf("%s=", what);
 fwrite(buf, 1, len, stdout);
 putchar('\n');
 free(buf);
}
