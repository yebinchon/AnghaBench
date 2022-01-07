
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum random_entropy_source { ____Placeholder_random_entropy_source } random_entropy_source ;


 int hc_source_mask ;

void
random_harvest_register_source(enum random_entropy_source source)
{

 hc_source_mask |= (1 << source);
}
