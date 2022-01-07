
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_map_data {int type; size_t len; } ;
typedef enum intr_map_data_type { ____Placeholder_intr_map_data_type } intr_map_data_type ;


 int M_INTRNG ;
 struct intr_map_data* malloc (size_t,int ,int) ;

struct intr_map_data *
intr_alloc_map_data(enum intr_map_data_type type, size_t len, int flags)
{
 struct intr_map_data *data;

 data = malloc(len, M_INTRNG, flags);
 data->type = type;
 data->len = len;
 return (data);
}
