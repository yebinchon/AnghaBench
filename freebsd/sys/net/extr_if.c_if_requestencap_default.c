
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct if_encap_req {scalar_t__ rtype; scalar_t__ bufsize; scalar_t__ lladdr_len; int family; scalar_t__ lladdr_off; int lladdr; int buf; } ;




 int EAFNOSUPPORT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IFENCAP_LL ;
 int memmove (int ,int ,scalar_t__) ;

__attribute__((used)) static int
if_requestencap_default(struct ifnet *ifp, struct if_encap_req *req)
{

 if (req->rtype != IFENCAP_LL)
  return (EOPNOTSUPP);

 if (req->bufsize < req->lladdr_len)
  return (ENOMEM);

 switch (req->family) {
 case 129:
 case 128:
  break;
 default:
  return (EAFNOSUPPORT);
 }


 memmove(req->buf, req->lladdr, req->lladdr_len);
 req->bufsize = req->lladdr_len;
 req->lladdr_off = 0;

 return (0);
}
