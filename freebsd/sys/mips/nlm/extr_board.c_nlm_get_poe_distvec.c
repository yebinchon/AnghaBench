
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int XLPGE_RX_VC ;
 int nlm_calc_poe_distvec (int ,int ,int ,int ,int,int *) ;
 int xlp_msg_thread_mask ;

int
nlm_get_poe_distvec(int vec, uint32_t *distvec)
{

 if (vec != 0)
  return (-1);
 nlm_calc_poe_distvec(xlp_msg_thread_mask, 0, 0, 0,
     0x1 << XLPGE_RX_VC, distvec);
 return (0);
}
