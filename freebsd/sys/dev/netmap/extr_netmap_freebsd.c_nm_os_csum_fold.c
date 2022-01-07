
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rawsum_t ;


 int htobe16 (int) ;

uint16_t
nm_os_csum_fold(rawsum_t cur_sum)
{

 while (cur_sum >> 16)
  cur_sum = (cur_sum & 0xFFFF) + (cur_sum >> 16);

 return htobe16((~cur_sum) & 0xFFFF);
}
