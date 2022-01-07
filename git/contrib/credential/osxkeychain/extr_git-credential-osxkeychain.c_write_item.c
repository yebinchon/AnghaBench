
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char const*,int,int,int ) ;
 int printf (char*,char const*) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void write_item(const char *what, const char *buf, int len)
{
 printf("%s=", what);
 fwrite(buf, 1, len, stdout);
 putchar('\n');
}
