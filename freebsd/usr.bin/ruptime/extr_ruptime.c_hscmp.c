
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wd_hostname; } ;
struct TYPE_4__ {TYPE_1__ hs_wd; } ;


 TYPE_2__* HS (void const*) ;
 int rflg ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
hscmp(const void *a1, const void *a2)
{
 return (rflg *
     strcmp(HS(a1)->hs_wd.wd_hostname, HS(a2)->hs_wd.wd_hostname));
}
