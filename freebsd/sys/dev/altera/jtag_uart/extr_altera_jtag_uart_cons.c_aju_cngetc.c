
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int AJU_CONSOLE_LOCK () ;
 int AJU_CONSOLE_UNLOCK () ;
 int aju_cons_read () ;

__attribute__((used)) static int
aju_cngetc(struct consdev *cp)
{
 int ret;

 AJU_CONSOLE_LOCK();
 ret = aju_cons_read();
 AJU_CONSOLE_UNLOCK();
 return (ret);
}
