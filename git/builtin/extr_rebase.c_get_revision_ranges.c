
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;


 int DEFAULT_ABBREV ;
 int GIT_MAX_HEXSZ ;
 int _ (char*) ;
 int error (int ) ;
 char* find_unique_abbrev (struct object_id*,int ) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 char const* oid_to_hex (struct object_id*) ;
 char* xstrdup (char const*) ;
 char* xstrfmt (char*,char const*,char const*) ;

__attribute__((used)) static int get_revision_ranges(struct commit *upstream, struct commit *onto,
          const char **head_hash,
          char **revisions, char **shortrevisions)
{
 struct commit *base_rev = upstream ? upstream : onto;
 const char *shorthead;
 struct object_id orig_head;

 if (get_oid("HEAD", &orig_head))
  return error(_("no HEAD?"));

 *head_hash = find_unique_abbrev(&orig_head, GIT_MAX_HEXSZ);
 *revisions = xstrfmt("%s...%s", oid_to_hex(&base_rev->object.oid),
         *head_hash);

 shorthead = find_unique_abbrev(&orig_head, DEFAULT_ABBREV);

 if (upstream) {
  const char *shortrev;

  shortrev = find_unique_abbrev(&base_rev->object.oid,
           DEFAULT_ABBREV);

  *shortrevisions = xstrfmt("%s..%s", shortrev, shorthead);
 } else
  *shortrevisions = xstrdup(shorthead);

 return 0;
}
