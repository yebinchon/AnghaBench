
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int device_printf (int ,char*,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int,int) ;

__attribute__((used)) static int nicvf_poll_reg(struct nicvf *nic, int qidx,
     uint64_t reg, int bit_pos, int bits, int val)
{
 uint64_t bit_mask;
 uint64_t reg_val;
 int timeout = 10;

 bit_mask = (1UL << bits) - 1;
 bit_mask = (bit_mask << bit_pos);

 while (timeout) {
  reg_val = nicvf_queue_reg_read(nic, reg, qidx);
  if (((reg_val & bit_mask) >> bit_pos) == val)
   return (0);

  DELAY(1000);
  timeout--;
 }
 device_printf(nic->dev, "Poll on reg 0x%lx failed\n", reg);
 return (ETIMEDOUT);
}
