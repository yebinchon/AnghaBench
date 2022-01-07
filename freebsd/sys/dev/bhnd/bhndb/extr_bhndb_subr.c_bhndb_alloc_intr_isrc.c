
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_intr_isrc {int is_rid; int * is_res; int is_owner; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int M_BHND ;
 int M_NOWAIT ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int ,int ,int ,int ) ;
 int free (struct bhndb_intr_isrc*,int ) ;
 struct bhndb_intr_isrc* malloc (int,int ,int ) ;

struct bhndb_intr_isrc *
bhndb_alloc_intr_isrc(device_t owner, int rid, rman_res_t start, rman_res_t end,
    rman_res_t count, u_int flags)
{
 struct bhndb_intr_isrc *isrc;

 isrc = malloc(sizeof(*isrc), M_BHND, M_NOWAIT);
 if (isrc == ((void*)0))
  return (((void*)0));

 isrc->is_owner = owner;
 isrc->is_rid = rid;
 isrc->is_res = bus_alloc_resource(owner, SYS_RES_IRQ, &isrc->is_rid,
     start, end, count, flags);
 if (isrc->is_res == ((void*)0)) {
  free(isrc, M_BHND);
  return (((void*)0));
 }

 return (isrc);
}
