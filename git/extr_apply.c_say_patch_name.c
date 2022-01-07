
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct patch {char const* old_name; char const* new_name; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fprintf (int *,char const*,int ) ;
 int fputc (char,int *) ;
 int quote_c_style (char const*,struct strbuf*,int *,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void say_patch_name(FILE *output, const char *fmt, struct patch *patch)
{
 struct strbuf sb = STRBUF_INIT;

 if (patch->old_name && patch->new_name &&
     strcmp(patch->old_name, patch->new_name)) {
  quote_c_style(patch->old_name, &sb, ((void*)0), 0);
  strbuf_addstr(&sb, " => ");
  quote_c_style(patch->new_name, &sb, ((void*)0), 0);
 } else {
  const char *n = patch->new_name;
  if (!n)
   n = patch->old_name;
  quote_c_style(n, &sb, ((void*)0), 0);
 }
 fprintf(output, fmt, sb.buf);
 fputc('\n', output);
 strbuf_release(&sb);
}
