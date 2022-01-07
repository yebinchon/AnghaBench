
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;



__attribute__((used)) static int
stub_priv_check(struct ucred *cred, int priv)
{

 return (0);
}
