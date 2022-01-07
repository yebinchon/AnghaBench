
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xs_transaction {int dummy; } ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;
typedef enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;


 scalar_t__ strlen (char const*) ;
 int xs_talkv (struct xs_transaction,int,struct iovec*,int,int *,void**) ;

__attribute__((used)) static int
xs_single(struct xs_transaction t, enum xsd_sockmsg_type request_type,
    const char *body, u_int *len, void **result)
{
 struct iovec iovec;

 iovec.iov_base = (void *)(uintptr_t)body;
 iovec.iov_len = strlen(body) + 1;

 return (xs_talkv(t, request_type, &iovec, 1, len, result));
}
