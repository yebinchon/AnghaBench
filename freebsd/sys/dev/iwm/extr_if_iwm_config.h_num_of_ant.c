
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mask ;


 int IWM_ANT_A ;
 int IWM_ANT_B ;
 int IWM_ANT_C ;

__attribute__((used)) static inline uint8_t num_of_ant(uint8_t mask)
{
 return !!((mask) & IWM_ANT_A) +
  !!((mask) & IWM_ANT_B) +
  !!((mask) & IWM_ANT_C);
}
