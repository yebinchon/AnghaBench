
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table_value {int tag; } ;



uint32_t
ipfw_export_table_value_legacy(struct table_value *v)
{





 return (v->tag);
}
