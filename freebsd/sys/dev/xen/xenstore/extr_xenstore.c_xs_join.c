
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,char) ;

struct sbuf *
xs_join(const char *dir, const char *name)
{
 struct sbuf *sb;

 sb = sbuf_new_auto();
 sbuf_cat(sb, dir);
 if (name[0] != '\0') {
  sbuf_putc(sb, '/');
  sbuf_cat(sb, name);
 }
 sbuf_finish(sb);

 return (sb);
}
