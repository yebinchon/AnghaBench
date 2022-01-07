
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



uint32_t
ctf_decay_count(uint32_t count, uint32_t decay)
{





 uint64_t perc_count, decay_per;
 uint32_t decayed_count;
 if (decay > 1000) {

  return (count);
 }
 perc_count = count;
 decay_per = decay;
 perc_count *= decay_per;
 perc_count /= 1000;




 decayed_count = count - (uint32_t)perc_count;
 return(decayed_count);
}
