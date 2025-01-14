
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int TERM_TAB ;
 size_t diff_timestamp_len (char const*,size_t) ;
 char* find_name_common (struct strbuf*,char const*,char*,int,char const*,int ) ;
 char* find_name_gnu (struct strbuf*,char const*,int) ;
 char const* strchrnul (char const*,char) ;

__attribute__((used)) static char *find_name_traditional(struct strbuf *root,
       const char *line,
       char *def,
       int p_value)
{
 size_t len;
 size_t date_len;

 if (*line == '"') {
  char *name = find_name_gnu(root, line, p_value);
  if (name)
   return name;
 }

 len = strchrnul(line, '\n') - line;
 date_len = diff_timestamp_len(line, len);
 if (!date_len)
  return find_name_common(root, line, def, p_value, ((void*)0), TERM_TAB);
 len -= date_len;

 return find_name_common(root, line, def, p_value, line + len, 0);
}
