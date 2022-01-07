
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int am_failure; int am_success; } ;
typedef TYPE_1__ au_mask_t ;
struct TYPE_6__ {int ac_class; } ;
typedef TYPE_2__ au_class_ent_t ;


 int ATF_REQUIRE (int ) ;
 TYPE_2__* getauclassnam (char const*) ;

__attribute__((used)) static au_mask_t
get_audit_mask(const char *name)
{
 au_mask_t fmask;
 au_class_ent_t *class;

 ATF_REQUIRE((class = getauclassnam(name)) != ((void*)0));
 fmask.am_success = class->ac_class;
 fmask.am_failure = class->ac_class;
 return (fmask);
}
