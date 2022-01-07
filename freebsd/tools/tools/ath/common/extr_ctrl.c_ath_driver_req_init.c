
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_driver_req {int s; } ;


 int bzero (struct ath_driver_req*,int) ;

int
ath_driver_req_init(struct ath_driver_req *req)
{

 bzero(req, sizeof(*req));
 req->s = -1;
 return (0);
}
