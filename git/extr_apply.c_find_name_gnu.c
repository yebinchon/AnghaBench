
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 struct strbuf STRBUF_INIT ;
 char* squash_slash (int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_insert (struct strbuf*,int ,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 char* strchr (char*,char) ;
 scalar_t__ unquote_c_style (struct strbuf*,char const*,int *) ;

__attribute__((used)) static char *find_name_gnu(struct strbuf *root,
      const char *line,
      int p_value)
{
 struct strbuf name = STRBUF_INIT;
 char *cp;





 if (unquote_c_style(&name, line, ((void*)0))) {
  strbuf_release(&name);
  return ((void*)0);
 }

 for (cp = name.buf; p_value; p_value--) {
  cp = strchr(cp, '/');
  if (!cp) {
   strbuf_release(&name);
   return ((void*)0);
  }
  cp++;
 }

 strbuf_remove(&name, 0, cp - name.buf);
 if (root->len)
  strbuf_insert(&name, 0, root->buf, root->len);
 return squash_slash(strbuf_detach(&name, ((void*)0)));
}
