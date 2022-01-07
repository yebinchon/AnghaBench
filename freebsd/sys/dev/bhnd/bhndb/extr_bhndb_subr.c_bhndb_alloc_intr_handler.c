
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_intr_isrc {int dummy; } ;
struct bhndb_intr_handler {int ih_active; int * ih_cookiep; struct bhndb_intr_isrc* ih_isrc; struct resource* ih_res; int ih_owner; } ;
typedef int device_t ;


 int M_BHND ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct bhndb_intr_handler* malloc (int,int ,int) ;

struct bhndb_intr_handler *
bhndb_alloc_intr_handler(device_t owner, struct resource *r,
    struct bhndb_intr_isrc *isrc)
{
 struct bhndb_intr_handler *ih;

 ih = malloc(sizeof(*ih), M_BHND, M_NOWAIT | M_ZERO);
 ih->ih_owner = owner;
 ih->ih_res = r;
 ih->ih_isrc = isrc;
 ih->ih_cookiep = ((void*)0);
 ih->ih_active = 0;

 return (ih);
}
