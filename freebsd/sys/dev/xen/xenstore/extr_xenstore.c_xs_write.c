
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;


 int XS_WRITE ;
 scalar_t__ sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 scalar_t__ strlen (char const*) ;
 struct sbuf* xs_join (char const*,char const*) ;
 int xs_talkv (struct xs_transaction,int ,struct iovec*,int,int *,int *) ;

int
xs_write(struct xs_transaction t, const char *dir, const char *node,
    const char *string)
{
 struct sbuf *path;
 struct iovec iovec[2];
 int error;

 path = xs_join(dir, node);

 iovec[0].iov_base = (void *)(uintptr_t) sbuf_data(path);
 iovec[0].iov_len = sbuf_len(path) + 1;
 iovec[1].iov_base = (void *)(uintptr_t) string;
 iovec[1].iov_len = strlen(string);

 error = xs_talkv(t, XS_WRITE, iovec, 2, ((void*)0), ((void*)0));
 sbuf_delete(path);

 return (error);
}
