
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int PRIV_MAC_PARTITION ;
 scalar_t__ SLOT (struct label*) ;
 int priv_check_cred (struct ucred*,int ) ;

__attribute__((used)) static int
partition_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{
 int error;

 error = 0;
 if (SLOT(newlabel) != 0) {






  error = priv_check_cred(cred, PRIV_MAC_PARTITION);
 }

 return (error);
}
