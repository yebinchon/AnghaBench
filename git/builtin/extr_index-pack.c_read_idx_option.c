
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int index_version; } ;
struct pack_idx_option {int version; } ;


 int _ (char*) ;
 struct packed_git* add_packed_git (char const*,int ,int) ;
 int close_pack_index (struct packed_git*) ;
 int die (int ,char const*) ;
 int free (struct packed_git*) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int read_v2_anomalous_offsets (struct packed_git*,struct pack_idx_option*) ;
 int strlen (char const*) ;

__attribute__((used)) static void read_idx_option(struct pack_idx_option *opts, const char *pack_name)
{
 struct packed_git *p = add_packed_git(pack_name, strlen(pack_name), 1);

 if (!p)
  die(_("Cannot open existing pack file '%s'"), pack_name);
 if (open_pack_index(p))
  die(_("Cannot open existing pack idx file for '%s'"), pack_name);


 opts->version = p->index_version;

 if (opts->version == 2)
  read_v2_anomalous_offsets(p, opts);
 close_pack_index(p);
 free(p);
}
