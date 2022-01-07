
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SPA_mapping {int dev; } ;


 int nvdimm_spa_dev_fini (int *) ;

void
nvdimm_spa_fini(struct SPA_mapping *spa)
{

 nvdimm_spa_dev_fini(&spa->dev);
}
