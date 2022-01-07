
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_client_command {int sx; } ;


 int sx_xunlock (int *) ;

__attribute__((used)) static void
cuse_cmd_unlock(struct cuse_client_command *pccmd)
{
 sx_xunlock(&pccmd->sx);
}
