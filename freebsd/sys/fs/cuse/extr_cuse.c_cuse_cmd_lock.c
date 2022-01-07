
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_client_command {int sx; } ;


 int sx_xlock (int *) ;

__attribute__((used)) static void
cuse_cmd_lock(struct cuse_client_command *pccmd)
{
 sx_xlock(&pccmd->sx);
}
