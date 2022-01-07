
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookinfo {int dummy; } ;


 int hhook_remove_hook_lookup (struct hookinfo*) ;

int
khelp_remove_hhook(struct hookinfo *hki)
{
 int error;





 error = hhook_remove_hook_lookup(hki);

 return (error);
}
