
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct hashmap {int dummy; } ;


 char* anonymize_mem (struct hashmap*,void* (*) (void const*,size_t*),char const*,size_t*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addch (struct strbuf*,int ) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static void anonymize_path(struct strbuf *out, const char *path,
      struct hashmap *map,
      void *(*generate)(const void *, size_t *))
{
 while (*path) {
  const char *end_of_component = strchrnul(path, '/');
  size_t len = end_of_component - path;
  const char *c = anonymize_mem(map, generate, path, &len);
  strbuf_add(out, c, len);
  path = end_of_component;
  if (*path)
   strbuf_addch(out, *path++);
 }
}
