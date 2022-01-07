
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {int gitdir; } ;


 int REF_ISSYMREF ;
 struct strbuf STRBUF_INIT ;
 int WM_PATHNAME ;
 int add_trailing_starstar_for_dir (struct strbuf*) ;
 char* resolve_ref_unsafe (char*,int ,int *,int*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_1__* the_repository ;
 int wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int include_by_branch(const char *cond, size_t cond_len)
{
 int flags;
 int ret;
 struct strbuf pattern = STRBUF_INIT;
 const char *refname = !the_repository->gitdir ?
  ((void*)0) : resolve_ref_unsafe("HEAD", 0, ((void*)0), &flags);
 const char *shortname;

 if (!refname || !(flags & REF_ISSYMREF) ||
   !skip_prefix(refname, "refs/heads/", &shortname))
  return 0;

 strbuf_add(&pattern, cond, cond_len);
 add_trailing_starstar_for_dir(&pattern);
 ret = !wildmatch(pattern.buf, shortname, WM_PATHNAME);
 strbuf_release(&pattern);
 return ret;
}
