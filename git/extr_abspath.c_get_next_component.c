
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 scalar_t__ is_dir_sep (char) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void get_next_component(struct strbuf *next, struct strbuf *remaining)
{
 char *start = ((void*)0);
 char *end = ((void*)0);

 strbuf_reset(next);



 for (start = remaining->buf; is_dir_sep(*start); start++)
  ;

 for (end = start; *end && !is_dir_sep(*end); end++)
  ;

 strbuf_add(next, start, end - start);

 strbuf_remove(remaining, 0, end - remaining->buf);
}
