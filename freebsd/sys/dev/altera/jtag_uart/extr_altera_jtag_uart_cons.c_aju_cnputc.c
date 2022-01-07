
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int AJU_CONSOLE_LOCK () ;
 int AJU_CONSOLE_UNLOCK () ;
 int aju_cons_write (int) ;

__attribute__((used)) static void
aju_cnputc(struct consdev *cp, int c)
{

 AJU_CONSOLE_LOCK();
 aju_cons_write(c);
 AJU_CONSOLE_UNLOCK();
}
