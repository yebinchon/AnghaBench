
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;



__attribute__((used)) static int
stub_cred_check_setresuid(struct ucred *cred, uid_t ruid, uid_t euid,
 uid_t suid)
{

 return (0);
}
