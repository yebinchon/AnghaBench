
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_vprintf (struct sbuf*,char const*,int ) ;
 int xs_write (struct xs_transaction,char const*,char const*,int ) ;

int
xs_vprintf(struct xs_transaction t,
    const char *dir, const char *node, const char *fmt, va_list ap)
{
 struct sbuf *sb;
 int error;

 sb = sbuf_new_auto();
 sbuf_vprintf(sb, fmt, ap);
 sbuf_finish(sb);
 error = xs_write(t, dir, node, sbuf_data(sb));
 sbuf_delete(sb);

 return (error);
}
