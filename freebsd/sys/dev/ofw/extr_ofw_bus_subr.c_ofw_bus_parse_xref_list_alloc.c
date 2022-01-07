
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 int KASSERT (int,char*) ;
 int ofw_bus_parse_xref_list_internal (int ,char const*,char const*,int,int *,int*,int **) ;

int
ofw_bus_parse_xref_list_alloc(phandle_t node, const char *list_name,
    const char *cells_name, int idx, phandle_t *producer, int *ncells,
    pcell_t **cells)
{

 KASSERT(idx >= 0,
     ("ofw_bus_parse_xref_list_alloc: negative index supplied"));

 return (ofw_bus_parse_xref_list_internal(node, list_name, cells_name,
      idx, producer, ncells, cells));
}
