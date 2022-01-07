
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct timecounter {unsigned int member_2; char* member_4; int member_5; int member_3; int member_1; int member_0; } ;


 int PIC_CLOCK_TIMER ;
 int XLP_IO_CLK ;
 int XLP_PCI_DEVINFO_REG0 ;
 int nlm_get_pic_pcibase (int ) ;
 scalar_t__ nlm_get_pic_regbase (int ) ;
 int nlm_nodeid () ;
 int nlm_pic_set_timer (scalar_t__,int ,unsigned long long,int ,int ) ;
 int nlm_pic_write_irt (scalar_t__,int,int ,int ,int,int ,int,int ,int) ;
 int nlm_read_reg (int ,int ) ;
 int platform_get_timecount ;
 struct timecounter* platform_timecounter ;
 int printf (char*,int ,int) ;
 scalar_t__ xlp_pic_base ;

__attribute__((used)) static void
xlp_pic_init(void)
{
 struct timecounter pic_timecounter = {
  platform_get_timecount,
  0,
  ~0U,
  XLP_IO_CLK,
  "XLRPIC",
  2000,
 };
        int i;
 int maxirt;

 xlp_pic_base = nlm_get_pic_regbase(0);
 maxirt = nlm_read_reg(nlm_get_pic_pcibase(nlm_nodeid()),
     XLP_PCI_DEVINFO_REG0);
        printf("Initializing PIC...@%jx %d IRTs\n", (uintmax_t)xlp_pic_base,
     maxirt);

        for (i = 0; i < maxirt; i++)
     nlm_pic_write_irt(xlp_pic_base, i, 0, 0, 1, 0,
     1, 0, 0x1);

 nlm_pic_set_timer(xlp_pic_base, PIC_CLOCK_TIMER, ~0ULL, 0, 0);
 platform_timecounter = &pic_timecounter;
}
