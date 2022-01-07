
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct commit_extra_header {scalar_t__ len; int value; int key; } ;


 int strbuf_add_lines (struct strbuf*,char*,int ,scalar_t__) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void add_extra_header(struct strbuf *buffer,
        struct commit_extra_header *extra)
{
 strbuf_addstr(buffer, extra->key);
 if (extra->len)
  strbuf_add_lines(buffer, " ", extra->value, extra->len);
 else
  strbuf_addch(buffer, '\n');
}
