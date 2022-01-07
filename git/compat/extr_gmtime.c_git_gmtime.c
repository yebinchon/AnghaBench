
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* git_gmtime_r (int const*,struct tm*) ;

struct tm *git_gmtime(const time_t *timep)
{
 static struct tm result;
 return git_gmtime_r(timep, &result);
}
