
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RegionContentList ;
 int TAILQ_INIT (int *) ;
 int aml_simulation_initialized ;
 int aml_simulation_regload (char*) ;

__attribute__((used)) static void
aml_simulation_init(void)
{

 aml_simulation_initialized = 1;
 TAILQ_INIT(&RegionContentList);
 aml_simulation_regload("region.ini");
}
