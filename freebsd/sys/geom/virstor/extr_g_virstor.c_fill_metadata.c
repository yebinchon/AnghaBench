
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct g_virstor_softc {int n_components; int chunk_size; int virsize; int id; TYPE_1__* geom; struct g_virstor_component* components; } ;
struct g_virstor_metadata {size_t no; int flags; int chunk_reserved; int chunk_next; int chunk_count; int provsize; int provider; int md_count; int md_chunk_size; int md_virsize; int md_id; int md_name; int md_version; int md_magic; } ;
struct g_virstor_component {int flags; int chunk_reserved; int chunk_next; int chunk_count; TYPE_3__* gcons; } ;
struct TYPE_6__ {TYPE_2__* provider; } ;
struct TYPE_5__ {int mediasize; int name; } ;
struct TYPE_4__ {int name; } ;


 int G_VIRSTOR_MAGIC ;
 int G_VIRSTOR_VERSION ;
 int bzero (struct g_virstor_metadata*,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void
fill_metadata(struct g_virstor_softc *sc, struct g_virstor_metadata *md,
    u_int nc, u_int hardcode)
{
 struct g_virstor_component *c;

 bzero(md, sizeof *md);
 c = &sc->components[nc];

 strncpy(md->md_magic, G_VIRSTOR_MAGIC, sizeof md->md_magic);
 md->md_version = G_VIRSTOR_VERSION;
 strncpy(md->md_name, sc->geom->name, sizeof md->md_name);
 md->md_id = sc->id;
 md->md_virsize = sc->virsize;
 md->md_chunk_size = sc->chunk_size;
 md->md_count = sc->n_components;

 if (hardcode) {
  strncpy(md->provider, c->gcons->provider->name,
      sizeof md->provider);
 }
 md->no = nc;
 md->provsize = c->gcons->provider->mediasize;
 md->chunk_count = c->chunk_count;
 md->chunk_next = c->chunk_next;
 md->chunk_reserved = c->chunk_reserved;
 md->flags = c->flags;
}
