
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FWD_DIST_VEC ;
 int nlm_read_ucore_rxpktrdy () ;
 int nlm_ucore_pkt_done (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int nlm_ucore_setup_poepktdistr (int ,int ,int ,int ,int ) ;

int main(void)
{
 int num_cachelines = 1518 / 64 ;



 while (1) {
  (void)nlm_read_ucore_rxpktrdy();
  nlm_ucore_setup_poepktdistr(FWD_DIST_VEC, 0, 0, 0, 0);
  nlm_ucore_pkt_done(num_cachelines, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0);
 }

 return (0);
}
