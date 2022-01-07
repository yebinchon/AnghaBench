
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_sec; } ;


 int SEC_THIS_YEAR (int) ;
 int nanotime (struct timespec*) ;

__attribute__((used)) static void
ixgbe_get_bypass_time(u32 *year, u32 *sec)
{
 struct timespec current;

 *year = 1970;
 nanotime(&current);
 *sec = current.tv_sec;

 while(*sec > SEC_THIS_YEAR(*year)) {
  *sec -= SEC_THIS_YEAR(*year);
  (*year)++;
 }
}
