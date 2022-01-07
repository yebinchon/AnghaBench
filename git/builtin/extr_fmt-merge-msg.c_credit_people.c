
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int IDENT_NO_DATE ;
 int add_people_count (struct strbuf*,struct string_list*) ;
 int comment_line_char ;
 char* git_author_info (int ) ;
 char* git_committer_info (int ) ;
 scalar_t__ skip_prefix (char const*,int ,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;

__attribute__((used)) static void credit_people(struct strbuf *out,
     struct string_list *them,
     int kind)
{
 const char *label;
 const char *me;

 if (kind == 'a') {
  label = "By";
  me = git_author_info(IDENT_NO_DATE);
 } else {
  label = "Via";
  me = git_committer_info(IDENT_NO_DATE);
 }

 if (!them->nr ||
     (them->nr == 1 &&
      me &&
      skip_prefix(me, them->items->string, &me) &&
      starts_with(me, " <")))
  return;
 strbuf_addf(out, "\n%c %s ", comment_line_char, label);
 add_people_count(out, them);
}
