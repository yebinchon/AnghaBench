
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ofw_bus_parse_xref_list_internal (int ,char const*,char const*,int,int *,int*,int *) ;

int
ofw_bus_parse_xref_list_get_length(phandle_t node, const char *list_name,
    const char *cells_name, int *count)
{

 return (ofw_bus_parse_xref_list_internal(node, list_name, cells_name,
      -1, ((void*)0), count, ((void*)0)));
}
