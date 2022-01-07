
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct cred {scalar_t__ cr_ruid; scalar_t__ cr_euid; scalar_t__ cr_svuid; scalar_t__ cr_issetugid; } ;


 int assert (int) ;
 int getresuid (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ issetugid () ;
 int perror (char*) ;
 int setresuid (scalar_t__,scalar_t__,scalar_t__) ;
 int setugid (scalar_t__) ;

__attribute__((used)) static int
cred_set(struct cred *cred)
{
 int error;

 error = setresuid(cred->cr_ruid, cred->cr_euid, cred->cr_svuid);
 if (error)
  return (error);

 error = setugid(cred->cr_issetugid);
 if (error) {
  perror("__setugid");
  return (error);
 }
 return (0);
}
