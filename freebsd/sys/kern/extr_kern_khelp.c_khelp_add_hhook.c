
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hookinfo {int dummy; } ;


 int hhook_add_hook_lookup (struct hookinfo*,int ) ;

int
khelp_add_hhook(struct hookinfo *hki, uint32_t flags)
{
 int error;





 error = hhook_add_hook_lookup(hki, flags);

 return (error);
}
