
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_intr_isrc {int is_res; int is_rid; int is_owner; } ;


 int M_BHND ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int free (struct bhndb_intr_isrc*,int ) ;

void
bhndb_free_intr_isrc(struct bhndb_intr_isrc *isrc)
{
 bus_release_resource(isrc->is_owner, SYS_RES_IRQ, isrc->is_rid,
     isrc->is_res);
 free(isrc, M_BHND);
}
