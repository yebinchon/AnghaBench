
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_map_data {int dummy; } ;


 int M_INTRNG ;
 int free (struct intr_map_data*,int ) ;

void intr_free_intr_map_data(struct intr_map_data *data)
{

 free(data, M_INTRNG);
}
