
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ buf; } ;


 struct strbuf STRBUF_INIT ;
 int convert_slashes (scalar_t__) ;
 scalar_t__ is_absolute_path (char const*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 size_t strlen (char const*) ;

char *prefix_filename(const char *pfx, const char *arg)
{
 struct strbuf path = STRBUF_INIT;
 size_t pfx_len = pfx ? strlen(pfx) : 0;

 if (!pfx_len)
  ;
 else if (is_absolute_path(arg))
  pfx_len = 0;
 else
  strbuf_add(&path, pfx, pfx_len);

 strbuf_addstr(&path, arg);



 return strbuf_detach(&path, ((void*)0));
}
