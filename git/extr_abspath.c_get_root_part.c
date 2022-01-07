
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int convert_slashes (int ) ;
 int offset_1st_component (int ) ;
 int strbuf_add (struct strbuf*,int ,int) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void get_root_part(struct strbuf *resolved, struct strbuf *remaining)
{
 int offset = offset_1st_component(remaining->buf);

 strbuf_reset(resolved);
 strbuf_add(resolved, remaining->buf, offset);



 strbuf_remove(remaining, 0, offset);
}
