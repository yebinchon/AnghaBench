
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ng_mesg {int dummy; } ;
typedef int ng_ID_t ;


 int NG_PATHSIZ ;
 struct ng_mesg* ng_dialog (char*,int ,int ,void const*,size_t) ;
 int sprintf (char*,char*,int) ;

struct ng_mesg *
ng_dialog_id(ng_ID_t id, u_int cookie, u_int opcode,
    const void *arg, size_t arglen)
{
 char path[NG_PATHSIZ];

 sprintf(path, "[%x]:", id);
 return (ng_dialog(path, cookie, opcode, arg, arglen));
}
