
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidformat {char* format; } ;



__attribute__((used)) static bool
oidformat_is_temperature(const struct oidformat *of)
{

 return (of->format[0] == 'I' && of->format[1] == 'K');
}
