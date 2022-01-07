
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {int name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_journal_metadata {scalar_t__ md_version; int md_magic; } ;
struct g_consumer {struct g_provider* provider; } ;


 int EINVAL ;
 int GJ_DEBUG (int,char*,int ,...) ;
 int G_JOURNAL_MAGIC ;
 scalar_t__ G_JOURNAL_VERSION ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int journal_metadata_decode (int *,struct g_journal_metadata*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
g_journal_metadata_read(struct g_consumer *cp, struct g_journal_metadata *md)
{
 struct g_provider *pp;
 u_char *buf;
 int error;

 g_topology_assert();

 error = g_access(cp, 1, 0, 0);
 if (error != 0)
  return (error);
 pp = cp->provider;
 g_topology_unlock();

 buf = g_read_data(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
     &error);
 g_topology_lock();
 g_access(cp, -1, 0, 0);
 if (buf == ((void*)0)) {
  GJ_DEBUG(1, "Cannot read metadata from %s (error=%d).",
      cp->provider->name, error);
  return (error);
 }


 error = journal_metadata_decode(buf, md);
 g_free(buf);

 if (strcmp(md->md_magic, G_JOURNAL_MAGIC) != 0)
  return (EINVAL);




 if (md->md_version > G_JOURNAL_VERSION) {
  GJ_DEBUG(0,
      "Kernel module is too old to handle metadata from %s.",
      cp->provider->name);
  return (EINVAL);
 }

 if (error != 0) {
  GJ_DEBUG(0, "MD5 metadata hash mismatch for provider %s.",
      cp->provider->name);
  return (error);
 }
 return (0);
}
