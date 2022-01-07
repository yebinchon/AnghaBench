
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int cred_check_relabel ;

__attribute__((used)) static int
test_cred_check_relabel(struct ucred *cred, struct label *newlabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(newlabel, MAGIC_CRED);
 COUNTER_INC(cred_check_relabel);

 return (0);
}
