
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;



__attribute__((used)) static int
stub_cred_check_setauid(struct ucred *cred, uid_t auid)
{

 return (0);
}
