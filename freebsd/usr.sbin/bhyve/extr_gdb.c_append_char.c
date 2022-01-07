
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int cur_csum ;
 int send_char (scalar_t__) ;

__attribute__((used)) static void
append_char(uint8_t v)
{

 send_char(v);
 cur_csum += v;
}
