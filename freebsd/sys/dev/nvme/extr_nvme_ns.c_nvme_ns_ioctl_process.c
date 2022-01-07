
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct nvme_namespace {int cdev; } ;
typedef int caddr_t ;


 int nvme_ns_ioctl (int ,int ,int ,int,struct thread*) ;

int
nvme_ns_ioctl_process(struct nvme_namespace *ns, u_long cmd, caddr_t arg,
    int flag, struct thread *td)
{
 return (nvme_ns_ioctl(ns->cdev, cmd, arg, flag, td));
}
