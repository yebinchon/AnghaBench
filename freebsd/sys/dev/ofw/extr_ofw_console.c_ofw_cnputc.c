
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int OF_write (int ,char*,int) ;
 int stdout ;

__attribute__((used)) static void
ofw_cnputc(struct consdev *cp, int c)
{
 char cbuf;

 if (c == '\n') {
  cbuf = '\r';
  OF_write(stdout, &cbuf, 1);
 }

 cbuf = c;
 OF_write(stdout, &cbuf, 1);
}
