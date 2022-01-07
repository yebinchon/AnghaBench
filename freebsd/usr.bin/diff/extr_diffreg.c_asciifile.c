
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 size_t fread (unsigned char*,int,int,int *) ;
 int * memchr (unsigned char*,char,size_t) ;
 int rewind (int *) ;

__attribute__((used)) static int
asciifile(FILE *f)
{
 unsigned char buf[BUFSIZ];
 size_t cnt;

 if (f == ((void*)0))
  return (1);

 rewind(f);
 cnt = fread(buf, 1, sizeof(buf), f);
 return (memchr(buf, '\0', cnt) == ((void*)0));
}
