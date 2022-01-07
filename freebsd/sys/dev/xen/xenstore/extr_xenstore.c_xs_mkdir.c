
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;


 int XS_MKDIR ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 struct sbuf* xs_join (char const*,char const*) ;
 int xs_single (struct xs_transaction,int ,int ,int *,int *) ;

int
xs_mkdir(struct xs_transaction t, const char *dir, const char *node)
{
 struct sbuf *path;
 int ret;

 path = xs_join(dir, node);
 ret = xs_single(t, XS_MKDIR, sbuf_data(path), ((void*)0), ((void*)0));
 sbuf_delete(path);

 return (ret);
}
