
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct TYPE_3__ {char* pattern; int flags; int nowildcardlen; int patternlen; } ;
struct TYPE_4__ {TYPE_1__ pat; int attr; } ;
struct match_attr {int is_macro; int num_attr; int * state; TYPE_2__ u; } ;
struct attr_state {int dummy; } ;


 int ATTRIBUTE_MACRO_PREFIX ;
 int PATTERN_FLAG_NEGATIVE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int attr_name_valid (char const*,int) ;
 int blank ;
 int fprintf_ln (int ,int ,char const*,char const*,int) ;
 int free (struct match_attr*) ;
 int git_attr_internal (char const*,int) ;
 int memcpy (char*,char const*,int) ;
 char* parse_attr (char const*,int,char const*,int *) ;
 int parse_path_pattern (char**,int *,int*,int *) ;
 int report_invalid_attr (char const*,int,char const*,int) ;
 scalar_t__ starts_with (char const*,int ) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int strcspn (char const*,int ) ;
 int strlen (int ) ;
 int strspn (char const*,int ) ;
 int unquote_c_style (struct strbuf*,char const*,char const**) ;
 int warning (int ) ;
 struct match_attr* xcalloc (int,int) ;

__attribute__((used)) static struct match_attr *parse_attr_line(const char *line, const char *src,
       int lineno, int macro_ok)
{
 int namelen;
 int num_attr, i;
 const char *cp, *name, *states;
 struct match_attr *res = ((void*)0);
 int is_macro;
 struct strbuf pattern = STRBUF_INIT;

 cp = line + strspn(line, blank);
 if (!*cp || *cp == '#')
  return ((void*)0);
 name = cp;

 if (*cp == '"' && !unquote_c_style(&pattern, name, &states)) {
  name = pattern.buf;
  namelen = pattern.len;
 } else {
  namelen = strcspn(name, blank);
  states = name + namelen;
 }

 if (strlen(ATTRIBUTE_MACRO_PREFIX) < namelen &&
     starts_with(name, ATTRIBUTE_MACRO_PREFIX)) {
  if (!macro_ok) {
   fprintf_ln(stderr, _("%s not allowed: %s:%d"),
       name, src, lineno);
   goto fail_return;
  }
  is_macro = 1;
  name += strlen(ATTRIBUTE_MACRO_PREFIX);
  name += strspn(name, blank);
  namelen = strcspn(name, blank);
  if (!attr_name_valid(name, namelen)) {
   report_invalid_attr(name, namelen, src, lineno);
   goto fail_return;
  }
 }
 else
  is_macro = 0;

 states += strspn(states, blank);


 for (cp = states, num_attr = 0; *cp; num_attr++) {
  cp = parse_attr(src, lineno, cp, ((void*)0));
  if (!cp)
   goto fail_return;
 }

 res = xcalloc(1,
        sizeof(*res) +
        sizeof(struct attr_state) * num_attr +
        (is_macro ? 0 : namelen + 1));
 if (is_macro) {
  res->u.attr = git_attr_internal(name, namelen);
 } else {
  char *p = (char *)&(res->state[num_attr]);
  memcpy(p, name, namelen);
  res->u.pat.pattern = p;
  parse_path_pattern(&res->u.pat.pattern,
          &res->u.pat.patternlen,
          &res->u.pat.flags,
          &res->u.pat.nowildcardlen);
  if (res->u.pat.flags & PATTERN_FLAG_NEGATIVE) {
   warning(_("Negative patterns are ignored in git attributes\n"
      "Use '\\!' for literal leading exclamation."));
   goto fail_return;
  }
 }
 res->is_macro = is_macro;
 res->num_attr = num_attr;


 for (cp = states, i = 0; *cp; i++) {
  cp = parse_attr(src, lineno, cp, &(res->state[i]));
 }

 strbuf_release(&pattern);
 return res;

fail_return:
 strbuf_release(&pattern);
 free(res);
 return ((void*)0);
}
