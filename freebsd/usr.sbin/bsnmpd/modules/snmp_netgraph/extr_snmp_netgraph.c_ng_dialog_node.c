
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ng_mesg {int dummy; } ;


 int NG_PATHSIZ ;
 struct ng_mesg* ng_dialog (char*,int ,int ,void const*,size_t) ;
 int sprintf (char*,char*,char const*) ;

struct ng_mesg *
ng_dialog_node(const char *node, u_int cookie, u_int opcode,
    const void *arg, size_t arglen)
{
 char path[NG_PATHSIZ];

 sprintf(path, "%s:", node);
 return (ng_dialog(path, cookie, opcode, arg, arglen));
}
