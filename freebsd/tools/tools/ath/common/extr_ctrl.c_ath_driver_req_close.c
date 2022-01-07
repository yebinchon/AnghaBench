
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_driver_req {int s; int * ifname; } ;


 int close (int) ;
 int free (int *) ;

int
ath_driver_req_close(struct ath_driver_req *req)
{
 if (req->s == -1)
  return (0);
 close(req->s);
 free(req->ifname);
 req->s = -1;
 req->ifname = ((void*)0);
 return (0);
}
