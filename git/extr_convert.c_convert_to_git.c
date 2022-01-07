
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; size_t len; } ;
struct index_state {int dummy; } ;
struct conv_attrs {int ident; int crlf_action; int working_tree_encoding; TYPE_1__* drv; } ;
struct TYPE_2__ {int name; scalar_t__ required; } ;


 int CAP_CLEAN ;
 int CONV_EOL_KEEP_CRLF ;
 int _ (char*) ;
 int apply_filter (char const*,char const*,size_t,int,struct strbuf*,TYPE_1__*,int ,int *) ;
 int convert_attrs (struct index_state const*,struct conv_attrs*,char const*) ;
 int crlf_to_git (struct index_state const*,char const*,char const*,size_t,struct strbuf*,int ,int) ;
 int die (int ,char const*,int ) ;
 int encode_to_git (char const*,char const*,size_t,struct strbuf*,int ,int) ;
 int ident_to_git (char const*,size_t,struct strbuf*,int ) ;

int convert_to_git(const struct index_state *istate,
     const char *path, const char *src, size_t len,
     struct strbuf *dst, int conv_flags)
{
 int ret = 0;
 struct conv_attrs ca;

 convert_attrs(istate, &ca, path);

 ret |= apply_filter(path, src, len, -1, dst, ca.drv, CAP_CLEAN, ((void*)0));
 if (!ret && ca.drv && ca.drv->required)
  die(_("%s: clean filter '%s' failed"), path, ca.drv->name);

 if (ret && dst) {
  src = dst->buf;
  len = dst->len;
 }

 ret |= encode_to_git(path, src, len, dst, ca.working_tree_encoding, conv_flags);
 if (ret && dst) {
  src = dst->buf;
  len = dst->len;
 }

 if (!(conv_flags & CONV_EOL_KEEP_CRLF)) {
  ret |= crlf_to_git(istate, path, src, len, dst, ca.crlf_action, conv_flags);
  if (ret && dst) {
   src = dst->buf;
   len = dst->len;
  }
 }
 return ret | ident_to_git(src, len, dst, ca.ident);
}
