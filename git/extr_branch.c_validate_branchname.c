
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int ref_exists (int ) ;
 scalar_t__ strbuf_check_branch_ref (struct strbuf*,char const*) ;

int validate_branchname(const char *name, struct strbuf *ref)
{
 if (strbuf_check_branch_ref(ref, name))
  die(_("'%s' is not a valid branch name."), name);

 return ref_exists(ref->buf);
}
