
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int seeotheruids_check (struct ucred*,struct ucred*) ;

__attribute__((used)) static int
seeotheruids_cred_check_visible(struct ucred *cr1, struct ucred *cr2)
{

 return (seeotheruids_check(cr1, cr2));
}
