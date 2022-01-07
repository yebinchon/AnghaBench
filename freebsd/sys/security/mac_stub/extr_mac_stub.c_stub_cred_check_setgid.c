
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;



__attribute__((used)) static int
stub_cred_check_setgid(struct ucred *cred, gid_t gid)
{

 return (0);
}
