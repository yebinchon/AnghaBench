
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int pcells ;
typedef int pcell_t ;


 int ENOENT ;
 int ERANGE ;
 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getencprop (int ,char const*,int*,int) ;
 int OF_getencprop_alloc_multi (int ,char const*,int,void**) ;
 int OF_node_from_xref (int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static int
ofw_bus_parse_xref_list_internal(phandle_t node, const char *list_name,
    const char *cells_name, int idx, phandle_t *producer, int *ncells,
    pcell_t **cells)
{
 phandle_t pnode;
 phandle_t *elems;
 uint32_t pcells;
 int rv, i, j, nelems, cnt;

 elems = ((void*)0);
 nelems = OF_getencprop_alloc_multi(node, list_name, sizeof(*elems),
     (void **)&elems);
 if (nelems <= 0)
  return (ENOENT);
 rv = (idx == -1) ? 0 : ENOENT;
 for (i = 0, cnt = 0; i < nelems; i += pcells, cnt++) {
  pnode = elems[i++];
  if (OF_getencprop(OF_node_from_xref(pnode),
      cells_name, &pcells, sizeof(pcells)) == -1) {
   printf("Missing %s property\n", cells_name);
   rv = ENOENT;
   break;
  }

  if ((i + pcells) > nelems) {
   printf("Invalid %s property value <%d>\n", cells_name,
       pcells);
   rv = ERANGE;
   break;
  }
  if (cnt == idx) {
   *cells= malloc(pcells * sizeof(**cells), M_OFWPROP,
       M_WAITOK);
   *producer = pnode;
   *ncells = pcells;
   for (j = 0; j < pcells; j++)
    (*cells)[j] = elems[i + j];
   rv = 0;
   break;
  }
 }
 if (elems != ((void*)0))
  free(elems, M_OFWPROP);
 if (idx == -1 && rv == 0)
  *ncells = cnt;
 return (rv);
}
