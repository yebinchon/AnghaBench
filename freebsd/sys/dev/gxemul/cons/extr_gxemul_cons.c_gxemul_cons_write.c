
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GC_LOCK_ASSERT () ;
 int gxemul_cons_data_write (char) ;
 int gxemul_cons_writable () ;

__attribute__((used)) static void
gxemul_cons_write(char ch)
{

 GC_LOCK_ASSERT();

 while (!gxemul_cons_writable());
 gxemul_cons_data_write(ch);
}
