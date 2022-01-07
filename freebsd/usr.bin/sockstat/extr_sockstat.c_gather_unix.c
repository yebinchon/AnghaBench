
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xunpgen {scalar_t__ xug_gen; int xug_len; } ;
struct TYPE_4__ {scalar_t__ sun_family; } ;
struct TYPE_3__ {scalar_t__ xso_so; } ;
struct xunpcb {int xu_len; scalar_t__ unp_conn; TYPE_2__ xu_addr; int xu_unpp; TYPE_1__ xu_socket; } ;
struct sockaddr_storage {int dummy; } ;
struct sock {int proto; char const* protoname; struct sock* next; scalar_t__ socket; struct addr* faddr; struct addr* laddr; scalar_t__ family; int pcb; } ;
struct addr {int * next; struct sockaddr_storage address; } ;
typedef scalar_t__ kvaddr_t ;


 scalar_t__ AF_UNIX ;
 scalar_t__ ENOMEM ;
 uintptr_t HASHSIZE ;



 int abort () ;
 void* calloc (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (void*) ;
 int opt_c ;
 int opt_l ;
 scalar_t__ opt_v ;
 void* realloc (void*,size_t) ;
 struct sock** sockhash ;
 scalar_t__ sysctlbyname (char const*,void*,size_t*,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
gather_unix(int proto)
{
 struct xunpgen *xug, *exug;
 struct xunpcb *xup;
 struct sock *sock;
 struct addr *laddr, *faddr;
 const char *varname, *protoname;
 size_t len, bufsize;
 void *buf;
 int hash, retry;

 switch (proto) {
 case 128:
  varname = "net.local.stream.pcblist";
  protoname = "stream";
  break;
 case 130:
  varname = "net.local.dgram.pcblist";
  protoname = "dgram";
  break;
 case 129:
  varname = "net.local.seqpacket.pcblist";
  protoname = "seqpac";
  break;
 default:
  abort();
 }
 buf = ((void*)0);
 bufsize = 8192;
 retry = 5;
 do {
  for (;;) {
   if ((buf = realloc(buf, bufsize)) == ((void*)0))
    err(1, "realloc()");
   len = bufsize;
   if (sysctlbyname(varname, buf, &len, ((void*)0), 0) == 0)
    break;
   if (errno != ENOMEM || len != bufsize)
    err(1, "sysctlbyname()");
   bufsize *= 2;
  }
  xug = (struct xunpgen *)buf;
  exug = (struct xunpgen *)(void *)
      ((char *)buf + len - sizeof(*exug));
  if (xug->xug_len != sizeof(*xug) ||
      exug->xug_len != sizeof(*exug)) {
   warnx("struct xinpgen size mismatch");
   goto out;
  }
 } while (xug->xug_gen != exug->xug_gen && retry--);

 if (xug->xug_gen != exug->xug_gen && opt_v)
  warnx("warning: data may be inconsistent");

 for (;;) {
  xug = (struct xunpgen *)(void *)((char *)xug + xug->xug_len);
  if (xug >= exug)
   break;
  xup = (struct xunpcb *)xug;
  if (xup->xu_len != sizeof(*xup)) {
   warnx("struct xunpcb size mismatch");
   goto out;
  }
  if ((xup->unp_conn == 0 && !opt_l) ||
      (xup->unp_conn != 0 && !opt_c))
   continue;
  if ((sock = calloc(1, sizeof(*sock))) == ((void*)0))
   err(1, "malloc()");
  if ((laddr = calloc(1, sizeof *laddr)) == ((void*)0))
   err(1, "malloc()");
  if ((faddr = calloc(1, sizeof *faddr)) == ((void*)0))
   err(1, "malloc()");
  sock->socket = xup->xu_socket.xso_so;
  sock->pcb = xup->xu_unpp;
  sock->proto = proto;
  sock->family = AF_UNIX;
  sock->protoname = protoname;
  if (xup->xu_addr.sun_family == AF_UNIX)
   laddr->address =
       *(struct sockaddr_storage *)(void *)&xup->xu_addr;
  else if (xup->unp_conn != 0)
   *(kvaddr_t*)&(faddr->address) = xup->unp_conn;
  laddr->next = ((void*)0);
  faddr->next = ((void*)0);
  sock->laddr = laddr;
  sock->faddr = faddr;
  hash = (int)((uintptr_t)sock->socket % HASHSIZE);
  sock->next = sockhash[hash];
  sockhash[hash] = sock;
 }
out:
 free(buf);
}
