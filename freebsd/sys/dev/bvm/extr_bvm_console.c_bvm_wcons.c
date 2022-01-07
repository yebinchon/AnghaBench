
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int bvm_cons_port ;
 int outl (int ,int ) ;

__attribute__((used)) static void
bvm_wcons(u_char ch)
{

 outl(bvm_cons_port, ch);
}
