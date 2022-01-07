
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IWM_SCD_BASE ;

__attribute__((used)) static inline unsigned int IWM_SCD_QUEUE_RDPTR(unsigned int chnl)
{
 if (chnl < 20)
  return IWM_SCD_BASE + 0x68 + chnl * 4;
 return IWM_SCD_BASE + 0x2B4 + (chnl - 20) * 4;
}
