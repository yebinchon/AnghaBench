
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct netbuf {struct netbuf* buf; int len; } ;
struct fdlist {scalar_t__ check_binding; int nconf; } ;
typedef scalar_t__ bool_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int __rpc_nconf2fd (int ) ;
 int bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int free (struct netbuf*) ;
 struct netbuf* uaddr2taddr (int ,char*) ;

__attribute__((used)) static bool_t
check_bound(struct fdlist *fdl, char *uaddr)
{
 int fd;
 struct netbuf *na;
 int ans;

 if (fdl->check_binding == FALSE)
  return (TRUE);

 na = uaddr2taddr(fdl->nconf, uaddr);
 if (!na)
  return (TRUE);

 fd = __rpc_nconf2fd(fdl->nconf);
 if (fd < 0) {
  free(na->buf);
  free(na);
  return (TRUE);
 }

 ans = bind(fd, (struct sockaddr *)na->buf, na->len);

 close(fd);
 free(na->buf);
 free(na);

 return (ans == 0 ? FALSE : TRUE);
}
