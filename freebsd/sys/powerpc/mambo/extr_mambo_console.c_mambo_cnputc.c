
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int MAMBO_CONSOLE_WRITE ;
 int mambocall (int ,char*,unsigned long,unsigned long) ;

__attribute__((used)) static void
mambo_cnputc(struct consdev *cp, int c)
{
 char cbuf;

 cbuf = c;
 mambocall(MAMBO_CONSOLE_WRITE, &cbuf, 1UL, 1UL);
}
