
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policyqueue {int pc_policy; } ;


 int AF_INET6 ;
 int IPPROTO_UDP ;
 int SIOCDADDRCTL_POLICY ;
 int SOCK_DGRAM ;
 struct policyqueue* TAILQ_FIRST (int *) ;
 struct policyqueue* TAILQ_NEXT (struct policyqueue*,int ) ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,int *) ;
 int pc_entry ;
 int policyhead ;
 int socket (int ,int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
flush_policy(void)
{
 struct policyqueue *ent;
 int s;

 if ((s = socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
  err(1, "socket(UDP)");

 for (ent = TAILQ_FIRST(&policyhead); ent;
      ent = TAILQ_NEXT(ent, pc_entry)) {
  if (ioctl(s, SIOCDADDRCTL_POLICY, &ent->pc_policy))
   warn("ioctl(SIOCDADDRCTL_POLICY)");
 }

 close(s);
}
