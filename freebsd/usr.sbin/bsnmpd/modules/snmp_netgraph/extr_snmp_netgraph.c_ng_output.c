
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int NgSendMsg (int ,char const*,int,int,void const*,size_t) ;
 int csock ;

int
ng_output(const char *path, u_int cookie, u_int opcode,
    const void *arg, size_t arglen)
{
 return (NgSendMsg(csock, path, (int)cookie, (int)opcode, arg, arglen));
}
