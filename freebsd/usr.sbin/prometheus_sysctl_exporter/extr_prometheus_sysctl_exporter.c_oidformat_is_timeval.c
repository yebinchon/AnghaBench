
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidformat {int format; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
oidformat_is_timeval(const struct oidformat *of)
{

 return (strcmp(of->format, "S,timeval") == 0);
}
