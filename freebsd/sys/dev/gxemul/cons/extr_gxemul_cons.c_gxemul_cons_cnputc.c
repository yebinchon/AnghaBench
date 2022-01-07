
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int GC_LOCK () ;
 int GC_UNLOCK () ;
 int gxemul_cons_write (int) ;

__attribute__((used)) static void
gxemul_cons_cnputc(struct consdev *cp, int c)
{

 GC_LOCK();
 gxemul_cons_write(c);
 GC_UNLOCK();
}
