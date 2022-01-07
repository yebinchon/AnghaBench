
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cap_rights_init_args {int cria_value4; int cria_value3; int cria_value2; int cria_value1; int * cria_rights; } ;
typedef int cap_rights_t ;


 int CAP_RIGHTS_VERSION ;
 int __cap_rights_init (int ,int *,int ,int ,int ,int ,unsigned long long) ;

void
__cap_rights_sysinit(void *arg)
{
 struct cap_rights_init_args *cria = arg;
 cap_rights_t *rights = cria->cria_rights;

 __cap_rights_init(CAP_RIGHTS_VERSION, rights, cria->cria_value1,
       cria->cria_value2, cria->cria_value3, cria->cria_value4, 0ULL);
}
