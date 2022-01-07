
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;


 int __PMC_CLASSES () ;

__attribute__((used)) static const char *
pmc_name_of_pmcclass(enum pmc_class class)
{

 switch (class) {




 __PMC_CLASSES();
 default:
  return ("<unknown>");
 }
}
