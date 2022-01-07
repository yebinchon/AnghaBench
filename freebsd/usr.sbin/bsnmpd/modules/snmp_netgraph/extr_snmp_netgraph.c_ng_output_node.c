
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int NG_PATHSIZ ;
 int ng_output (char*,int ,int ,void const*,size_t) ;
 int sprintf (char*,char*,char const*) ;

int
ng_output_node(const char *node, u_int cookie, u_int opcode,
    const void *arg, size_t arglen)
{
 char path[NG_PATHSIZ];

 sprintf(path, "%s:", node);
 return (ng_output(path, cookie, opcode, arg, arglen));
}
