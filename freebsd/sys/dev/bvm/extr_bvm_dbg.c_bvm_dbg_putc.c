
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bvm_dbg_port ;
 int outl (int ,int) ;

__attribute__((used)) static void
bvm_dbg_putc(int c)
{

 outl(bvm_dbg_port, c);
}
