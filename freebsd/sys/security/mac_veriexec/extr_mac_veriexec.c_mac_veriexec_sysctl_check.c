
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int oid_kind; } ;


 int CTLFLAG_SECURE ;
 int EPERM ;
 int VERIEXEC_STATE_ENFORCE ;
 int mac_veriexec_state ;

__attribute__((used)) static int
mac_veriexec_sysctl_check(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{
 struct sysctl_oid *oid;


 if ((mac_veriexec_state & VERIEXEC_STATE_ENFORCE) == 0)
  return (0);

 oid = oidp;
 if (oid->oid_kind & CTLFLAG_SECURE) {
  return (EPERM);
 }
 return 0;
}
