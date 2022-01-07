
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; } ;


 int AF_INET ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int RES_INIT ;
 int SOCK_DGRAM ;
 int TAILQ_INIT (int *) ;
 TYPE_1__ _res ;
 int fcntl (int,int ,int ) ;
 int qhead ;
 int res_init () ;
 int resfd ;
 int socket (int ,int ,int ) ;
 int yp_error (char*) ;

int
yp_init_resolver(void)
{
 TAILQ_INIT(&qhead);
 if (!(_res.options & RES_INIT) && res_init() == -1) {
  yp_error("res_init failed");
  return(1);
 }
 if ((resfd = socket(AF_INET, SOCK_DGRAM, 0)) == -1) {
  yp_error("couldn't create socket");
  return(1);
 }
 if (fcntl(resfd, F_SETFL, O_NONBLOCK) == -1) {
  yp_error("couldn't make resolver socket non-blocking");
  return(1);
 }
 return(0);
}
