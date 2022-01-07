
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;



__attribute__((used)) static int
stub_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{

 return (0);
}
