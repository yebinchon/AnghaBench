
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct g_journal_softc {int sc_journal_offset; int sc_journal_next_id; int sc_journal_id; struct g_consumer* sc_jconsumer; } ;
struct g_journal_header {int jh_journal_next_id; int jh_journal_id; int jh_magic; } ;
struct g_consumer {TYPE_1__* provider; } ;
struct TYPE_2__ {scalar_t__ sectorsize; } ;


 int GJ_HEADER_MAGIC ;
 int M_WAITOK ;
 int g_journal_header_encode (struct g_journal_header*,int *) ;
 int g_write_data (struct g_consumer*,int ,int *,scalar_t__) ;
 int gj_free (int *,scalar_t__) ;
 int * gj_malloc (scalar_t__,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
g_journal_write_header(struct g_journal_softc *sc)
{
 struct g_journal_header hdr;
 struct g_consumer *cp;
 u_char *buf;
 int error;

 cp = sc->sc_jconsumer;
 buf = gj_malloc(cp->provider->sectorsize, M_WAITOK);

 strlcpy(hdr.jh_magic, GJ_HEADER_MAGIC, sizeof(hdr.jh_magic));
 hdr.jh_journal_id = sc->sc_journal_id;
 hdr.jh_journal_next_id = sc->sc_journal_next_id;
 g_journal_header_encode(&hdr, buf);
 error = g_write_data(cp, sc->sc_journal_offset, buf,
     cp->provider->sectorsize);

 sc->sc_journal_offset += cp->provider->sectorsize;

 gj_free(buf, cp->provider->sectorsize);
 return (error);
}
