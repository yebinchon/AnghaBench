
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_realpath (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;

char *real_pathdup(const char *path, int die_on_error)
{
 struct strbuf realpath = STRBUF_INIT;
 char *retval = ((void*)0);

 if (strbuf_realpath(&realpath, path, die_on_error))
  retval = strbuf_detach(&realpath, ((void*)0));

 strbuf_release(&realpath);

 return retval;
}
