
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_add_absolute_path (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

char *absolute_pathdup(const char *path)
{
 struct strbuf sb = STRBUF_INIT;
 strbuf_add_absolute_path(&sb, path);
 return strbuf_detach(&sb, ((void*)0));
}
