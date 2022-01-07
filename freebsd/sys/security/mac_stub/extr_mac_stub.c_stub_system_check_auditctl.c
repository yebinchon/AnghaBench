
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;



__attribute__((used)) static int
stub_system_check_auditctl(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{

 return (0);
}
