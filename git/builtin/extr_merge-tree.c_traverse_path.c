
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct strbuf {int dummy; } ;
struct name_entry {int pathlen; int path; } ;


 struct strbuf STRBUF_INIT ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_make_traverse_path (struct strbuf*,struct traverse_info const*,int ,int ) ;

__attribute__((used)) static char *traverse_path(const struct traverse_info *info, const struct name_entry *n)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_make_traverse_path(&buf, info, n->path, n->pathlen);
 return strbuf_detach(&buf, ((void*)0));
}
