
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int GC_LOCK () ;
 int GC_UNLOCK () ;
 int gxemul_cons_read () ;

__attribute__((used)) static int
gxemul_cons_cngetc(struct consdev *cp)
{
 int ret;

 GC_LOCK();
 ret = gxemul_cons_read();
 GC_UNLOCK();
 return (ret);
}
