
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int ESRCH ;
 int partition_check (int ,int ) ;

__attribute__((used)) static int
partition_cred_check_visible(struct ucred *cr1, struct ucred *cr2)
{
 int error;

 error = partition_check(cr1->cr_label, cr2->cr_label);

 return (error == 0 ? 0 : ESRCH);
}
