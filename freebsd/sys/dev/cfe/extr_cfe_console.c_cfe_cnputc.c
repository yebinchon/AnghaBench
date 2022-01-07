
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 scalar_t__ cfe_write (int ,char*,int) ;
 int conhandle ;

__attribute__((used)) static void
cfe_cnputc(struct consdev *cp, int c)
{
 char cbuf;

 if (c == '\n')
  cfe_cnputc(cp, '\r');

 cbuf = c;
 while (cfe_write(conhandle, &cbuf, 1) == 0)
  continue;
}
