
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_t ;


 int loglevel ;
 int ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int
set_loglevel(ocs_t *ocs, char *name, char *value)
{

 loglevel = ocs_strtoul(value, ((void*)0), 0);

 return 0;
}
