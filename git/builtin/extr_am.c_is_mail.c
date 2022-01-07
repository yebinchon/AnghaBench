
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
typedef int regex_t ;
typedef int FILE ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 int SEEK_SET ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (char*,char const*) ;
 int die_errno (int ) ;
 scalar_t__ fseek (int *,long,int ) ;
 scalar_t__ regcomp (int *,char const*,int) ;
 scalar_t__ regexec (int *,char*,int ,int *,int ) ;
 int regfree (int *) ;
 int strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int is_mail(FILE *fp)
{
 const char *header_regex = "^[!-9;-~]+:";
 struct strbuf sb = STRBUF_INIT;
 regex_t regex;
 int ret = 1;

 if (fseek(fp, 0L, SEEK_SET))
  die_errno(_("fseek failed"));

 if (regcomp(&regex, header_regex, REG_NOSUB | REG_EXTENDED))
  die("invalid pattern: %s", header_regex);

 while (!strbuf_getline(&sb, fp)) {
  if (!sb.len)
   break;


  if (*sb.buf == '\t' || *sb.buf == ' ')
   continue;


  if (regexec(&regex, sb.buf, 0, ((void*)0), 0)) {
   ret = 0;
   goto done;
  }
 }

done:
 regfree(&regex);
 strbuf_release(&sb);
 return ret;
}
