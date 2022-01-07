
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;


 int XS_DIRECTORY ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 char** split (char*,int ,int *) ;
 struct sbuf* xs_join (char const*,char const*) ;
 int xs_single (struct xs_transaction,int ,int ,int *,void**) ;

int
xs_directory(struct xs_transaction t, const char *dir, const char *node,
    u_int *num, const char ***result)
{
 struct sbuf *path;
 char *strings;
 u_int len = 0;
 int error;

 path = xs_join(dir, node);
 error = xs_single(t, XS_DIRECTORY, sbuf_data(path), &len,
     (void **)&strings);
 sbuf_delete(path);
 if (error)
  return (error);

 *result = split(strings, len, num);

 return (0);
}
