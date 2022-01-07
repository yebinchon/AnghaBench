
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl {int acl_maxcnt; } ;


 int ACL_MAX_ENTRIES ;
 int M_ACL ;
 struct acl* malloc (int,int ,int) ;

struct acl *
acl_alloc(int flags)
{
 struct acl *aclp;

 aclp = malloc(sizeof(*aclp), M_ACL, flags);
 if (aclp == ((void*)0))
  return (((void*)0));

 aclp->acl_maxcnt = ACL_MAX_ENTRIES;

 return (aclp);
}
