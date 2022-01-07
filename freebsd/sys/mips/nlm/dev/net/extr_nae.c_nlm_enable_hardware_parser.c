
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_RX_CONFIG ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_setup_l3ctable_even (int ,int,int,int,int,int,int) ;
 int nlm_setup_l3ctable_odd (int ,int,int,int,int,int,int,int) ;
 int nlm_setup_l4ctable_even (int ,int,int ,int ,int,int ,int ,int) ;
 int nlm_setup_l4ctable_odd (int ,int,int ,int,int,int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_enable_hardware_parser(uint64_t nae_base)
{
 uint32_t val;

 val = nlm_read_nae_reg(nae_base, NAE_RX_CONFIG);
 val |= (1 << 12);
 nlm_write_nae_reg(nae_base, NAE_RX_CONFIG, val);
 nlm_setup_l3ctable_even(nae_base, 0, 4, 1, 9, 1, 0x8847);




 nlm_setup_l3ctable_odd(nae_base, 0, 9, 1, 12, 4, 16, 4);




 nlm_setup_l3ctable_even(nae_base, 1, 0, 1, 9, 1, 0x0800);




 nlm_setup_l3ctable_odd(nae_base, 1, 9, 1, 12, 4, 16, 4);




 nlm_setup_l3ctable_even(nae_base, 2, 0, 1, 6, 1, 0x86dd);




 nlm_setup_l3ctable_odd(nae_base, 2, 6, 1, 8, 16, 24, 16);




 nlm_setup_l3ctable_even(nae_base, 3, 0, 0, 9, 1, 0x0806);

 nlm_setup_l3ctable_odd(nae_base, 3, 0, 30, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 4, 0, 0, 9, 1, 0x8906);
 nlm_setup_l3ctable_odd(nae_base, 4, 0, 28, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 5, 0, 0, 9, 1, 0x8100);

 nlm_setup_l3ctable_odd(nae_base, 5, 0, 31, 0, 0, 0, 0);





 nlm_setup_l3ctable_even(nae_base, 6, 0, 0, 9, 1, 0x88a8);

 nlm_setup_l3ctable_odd(nae_base, 6, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 7, 0, 0, 9, 1, 0x9100);

 nlm_setup_l3ctable_odd(nae_base, 7, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 8, 0, 0, 9, 1, 0x8870);

 nlm_setup_l3ctable_odd(nae_base, 8, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 9, 0, 0, 9, 1, 0x8848);

 nlm_setup_l3ctable_odd(nae_base, 9, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 10, 0, 0, 9, 1, 0x88e5);

 nlm_setup_l3ctable_odd(nae_base, 10, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 11, 0, 0, 9, 1, 0x88f7);







 nlm_setup_l3ctable_odd(nae_base, 11, 0, 31, 31, 2, 0, 0);





 nlm_setup_l3ctable_even(nae_base, 12, 0, 0, 9, 1, 0xc021);





 nlm_setup_l3ctable_odd(nae_base, 12, 0, 4, 0, 0, 0, 0);





 nlm_setup_l3ctable_even(nae_base, 13, 0, 0, 9, 1, 0xc025);

 nlm_setup_l3ctable_odd(nae_base, 13, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 14, 0, 0, 9, 1, 0x8864);

 nlm_setup_l3ctable_odd(nae_base, 14, 0, 31, 0, 0, 0, 0);




 nlm_setup_l3ctable_even(nae_base, 15, 0, 0, 0, 0, 0x0000);

 nlm_setup_l3ctable_odd(nae_base, 15, 0, 31, 0, 0, 0, 0);
 nlm_setup_l4ctable_even(nae_base, 0, 0, 0, 1, 0, 0, 0x6);


 nlm_setup_l4ctable_odd(nae_base, 0, 0, 15, 15, 5);




 nlm_setup_l4ctable_even(nae_base, 1, 0, 0, 1, 0, 0, 0x11);


 nlm_setup_l4ctable_odd(nae_base, 1, 0, 8, 0, 0);




 nlm_setup_l4ctable_even(nae_base, 2, 0, 0, 1, 0, 0, 0x84);



 nlm_setup_l4ctable_odd(nae_base, 2, 0, 12, 0, 0);




 nlm_setup_l4ctable_even(nae_base, 3, 0, 0, 1, 0, 0, 0x1b);



 nlm_setup_l4ctable_odd(nae_base, 3, 0, 15, 15, 3);




 nlm_setup_l4ctable_even(nae_base, 4, 0, 0, 1, 0, 0, 0x21);



 nlm_setup_l4ctable_odd(nae_base, 4, 0, 15, 15, 1);




 nlm_setup_l4ctable_even(nae_base, 5, 0, 0, 1, 0, 0, 0x29);


 nlm_setup_l4ctable_odd(nae_base, 5, 0, 15, 15, 5);




 nlm_setup_l4ctable_even(nae_base, 6, 0, 0, 1, 0, 0, 0x04);


 nlm_setup_l4ctable_odd(nae_base, 6, 0, 15, 15, 5);




 nlm_setup_l4ctable_even(nae_base, 7, 0, 0, 1, 0, 0, 0x0);

 nlm_setup_l4ctable_odd(nae_base, 7, 0, 15, 15, 5);
}
