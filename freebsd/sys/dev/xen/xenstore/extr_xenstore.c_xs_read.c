
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;


 int XS_READ ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 struct sbuf* xs_join (char const*,char const*) ;
 int xs_single (struct xs_transaction,int ,int ,int *,void**) ;

int
xs_read(struct xs_transaction t, const char *dir, const char *node,
    u_int *len, void **result)
{
 struct sbuf *path;
 void *ret;
 int error;

 path = xs_join(dir, node);
 error = xs_single(t, XS_READ, sbuf_data(path), len, &ret);
 sbuf_delete(path);
 if (error)
  return (error);
 *result = ret;
 return (0);
}
