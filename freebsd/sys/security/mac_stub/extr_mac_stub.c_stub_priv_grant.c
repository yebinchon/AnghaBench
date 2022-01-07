
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int
stub_priv_grant(struct ucred *cred, int priv)
{

 return (EPERM);
}
