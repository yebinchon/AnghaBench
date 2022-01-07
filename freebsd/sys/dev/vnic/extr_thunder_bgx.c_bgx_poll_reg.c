
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct bgx {int dummy; } ;
typedef scalar_t__ boolean_t ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int bgx_reg_read (struct bgx*,int ,int) ;

__attribute__((used)) static int
bgx_poll_reg(struct bgx *bgx, uint8_t lmac, uint64_t reg, uint64_t mask,
    boolean_t zero)
{
 int timeout = 10;
 uint64_t reg_val;

 while (timeout) {
  reg_val = bgx_reg_read(bgx, lmac, reg);
  if (zero && !(reg_val & mask))
   return (0);
  if (!zero && (reg_val & mask))
   return (0);

  DELAY(100);
  timeout--;
 }
 return (ETIMEDOUT);
}
