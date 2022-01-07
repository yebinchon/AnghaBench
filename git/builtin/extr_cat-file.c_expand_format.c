
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int die (char*,char const*) ;
 int expand_atom (struct strbuf*,char const*,int,void*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static size_t expand_format(struct strbuf *sb, const char *start, void *data)
{
 const char *end;

 if (*start != '(')
  return 0;
 end = strchr(start + 1, ')');
 if (!end)
  die("format element '%s' does not end in ')'", start);

 expand_atom(sb, start + 1, end - start - 1, data);

 return end - start + 1;
}
