
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bvm_dbg_port ;
 int inl (int ) ;

__attribute__((used)) static int
bvm_dbg_getc(void)
{

 return (inl(bvm_dbg_port));
}
