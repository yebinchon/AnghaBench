
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_NOSPACE ;
 int humanize_number (char*,size_t,int,char*,int ,int) ;

void
format_stripe(char *buf, size_t buflen, uint8_t stripe)
{

 humanize_number(buf, buflen, (1 << stripe) * 512, "", HN_AUTOSCALE,
     HN_B | HN_NOSPACE);
}
