
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {void* iov_len; void* iov_base; } ;


 int XST_NIL ;
 int XS_WATCH ;
 void* strlen (char const*) ;
 int xs_talkv (int ,int ,struct iovec*,int,int *,int *) ;

__attribute__((used)) static int
xs_watch(const char *path, const char *token)
{
 struct iovec iov[2];

 iov[0].iov_base = (void *)(uintptr_t) path;
 iov[0].iov_len = strlen(path) + 1;
 iov[1].iov_base = (void *)(uintptr_t) token;
 iov[1].iov_len = strlen(token) + 1;

 return (xs_talkv(XST_NIL, XS_WATCH, iov, 2, ((void*)0), ((void*)0)));
}
