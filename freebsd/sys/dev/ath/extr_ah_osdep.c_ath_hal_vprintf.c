
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ath_hal {int dummy; } ;


 int vprintf (char const*,int ) ;

void
ath_hal_vprintf(struct ath_hal *ah, const char* fmt, va_list ap)
{
 vprintf(fmt, ap);
}
