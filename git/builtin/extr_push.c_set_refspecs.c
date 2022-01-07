
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct remote {int dummy; } ;
struct ref {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ deleterefs ;
 int die (int ) ;
 struct ref* get_local_heads () ;
 char* map_refspec (char const*,struct remote*,struct ref*) ;
 int refspec_append (int *,char const*) ;
 struct remote* remote_get (char const*) ;
 int rs ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strchr (char const*,char) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void set_refspecs(const char **refs, int nr, const char *repo)
{
 struct remote *remote = ((void*)0);
 struct ref *local_refs = ((void*)0);
 int i;

 for (i = 0; i < nr; i++) {
  const char *ref = refs[i];
  if (!strcmp("tag", ref)) {
   struct strbuf tagref = STRBUF_INIT;
   if (nr <= ++i)
    die(_("tag shorthand without <tag>"));
   ref = refs[i];
   if (deleterefs)
    strbuf_addf(&tagref, ":refs/tags/%s", ref);
   else
    strbuf_addf(&tagref, "refs/tags/%s", ref);
   ref = strbuf_detach(&tagref, ((void*)0));
  } else if (deleterefs) {
   struct strbuf delref = STRBUF_INIT;
   if (strchr(ref, ':'))
    die(_("--delete only accepts plain target ref names"));
   strbuf_addf(&delref, ":%s", ref);
   ref = strbuf_detach(&delref, ((void*)0));
  } else if (!strchr(ref, ':')) {
   if (!remote) {

    remote = remote_get(repo);
    local_refs = get_local_heads();
   }
   ref = map_refspec(ref, remote, local_refs);
  }
  refspec_append(&rs, ref);
 }
}
