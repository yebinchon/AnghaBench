
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int * buf; } ;


 scalar_t__ is_dir_sep (int ) ;
 size_t offset_1st_component (int *) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static void strip_last_component(struct strbuf *path)
{
 size_t offset = offset_1st_component(path->buf);
 size_t len = path->len;


 while (offset < len && !is_dir_sep(path->buf[len - 1]))
  len--;

 while (offset < len && is_dir_sep(path->buf[len - 1]))
  len--;

 strbuf_setlen(path, len);
}
