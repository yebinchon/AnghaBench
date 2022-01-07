
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl {int dummy; } ;


 int M_ACL ;
 int free (struct acl*,int ) ;

void
acl_free(struct acl *aclp)
{

 free(aclp, M_ACL);
}
