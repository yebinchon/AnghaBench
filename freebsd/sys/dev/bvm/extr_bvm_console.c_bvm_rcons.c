
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 int bvm_cons_port ;
 int inl (int ) ;

__attribute__((used)) static int
bvm_rcons(u_char *ch)
{
 int c;

 c = inl(bvm_cons_port);
 if (c != -1) {
  *ch = (u_char)c;
  return (0);
 } else
  return (-1);
}
