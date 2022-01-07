
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; size_t len; } ;
struct index_state {int dummy; } ;
struct delayed_checkout {int dummy; } ;
struct conv_attrs {TYPE_1__* drv; int working_tree_encoding; int crlf_action; int ident; } ;
struct TYPE_2__ {int name; scalar_t__ required; scalar_t__ process; scalar_t__ smudge; } ;


 int CAP_SMUDGE ;
 int _ (char*) ;
 int apply_filter (char const*,char const*,size_t,int,struct strbuf*,TYPE_1__*,int ,struct delayed_checkout*) ;
 int convert_attrs (struct index_state const*,struct conv_attrs*,char const*) ;
 int crlf_to_worktree (char const*,size_t,struct strbuf*,int ) ;
 int die (int ,char const*,int ) ;
 int encode_to_worktree (char const*,char const*,size_t,struct strbuf*,int ) ;
 int ident_to_worktree (char const*,size_t,struct strbuf*,int ) ;

__attribute__((used)) static int convert_to_working_tree_internal(const struct index_state *istate,
         const char *path, const char *src,
         size_t len, struct strbuf *dst,
         int normalizing, struct delayed_checkout *dco)
{
 int ret = 0, ret_filter = 0;
 struct conv_attrs ca;

 convert_attrs(istate, &ca, path);

 ret |= ident_to_worktree(src, len, dst, ca.ident);
 if (ret) {
  src = dst->buf;
  len = dst->len;
 }





 if ((ca.drv && (ca.drv->smudge || ca.drv->process)) || !normalizing) {
  ret |= crlf_to_worktree(src, len, dst, ca.crlf_action);
  if (ret) {
   src = dst->buf;
   len = dst->len;
  }
 }

 ret |= encode_to_worktree(path, src, len, dst, ca.working_tree_encoding);
 if (ret) {
  src = dst->buf;
  len = dst->len;
 }

 ret_filter = apply_filter(
  path, src, len, -1, dst, ca.drv, CAP_SMUDGE, dco);
 if (!ret_filter && ca.drv && ca.drv->required)
  die(_("%s: smudge filter %s failed"), path, ca.drv->name);

 return ret | ret_filter;
}
