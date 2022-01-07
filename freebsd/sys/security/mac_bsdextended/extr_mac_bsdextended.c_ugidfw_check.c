
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;


 int EJUSTRETURN ;
 int MBI_APPEND ;
 int MBI_WRITE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rule_slots ;
 int ** rules ;
 int ugidfw_mtx ;
 int ugidfw_rulecheck (int *,struct ucred*,struct vnode*,struct vattr*,int) ;

int
ugidfw_check(struct ucred *cred, struct vnode *vp, struct vattr *vap,
    int acc_mode)
{
 int error, i;




 if (acc_mode & MBI_APPEND) {
  acc_mode &= ~MBI_APPEND;
  acc_mode |= MBI_WRITE;
 }
 mtx_lock(&ugidfw_mtx);
 for (i = 0; i < rule_slots; i++) {
  if (rules[i] == ((void*)0))
   continue;
  error = ugidfw_rulecheck(rules[i], cred,
      vp, vap, acc_mode);
  if (error == EJUSTRETURN)
   break;
  if (error) {
   mtx_unlock(&ugidfw_mtx);
   return (error);
  }
 }
 mtx_unlock(&ugidfw_mtx);
 return (0);
}
