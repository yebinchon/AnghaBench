
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int NFS_PROGRAM ;
 int rpcb_unset (int ,int,int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
unregistration(void)
{
 if ((!rpcb_unset(NFS_PROGRAM, 2, ((void*)0))) ||
     (!rpcb_unset(NFS_PROGRAM, 3, ((void*)0))))
  syslog(LOG_ERR, "rpcb_unset failed");
}
