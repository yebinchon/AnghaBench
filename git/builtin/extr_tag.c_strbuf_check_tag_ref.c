
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int check_refname_format (int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int strbuf_check_tag_ref(struct strbuf *sb, const char *name)
{
 if (name[0] == '-')
  return -1;

 strbuf_reset(sb);
 strbuf_addf(sb, "refs/tags/%s", name);

 return check_refname_format(sb->buf, 0);
}
