
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mday; } ;


 int EOVERFLOW ;
 int errno ;
 struct tm* gmtime_r (int const*,struct tm*) ;
 int memset (struct tm*,int ,int) ;

struct tm *git_gmtime_r(const time_t *timep, struct tm *result)
{
 struct tm *ret;

 memset(result, 0, sizeof(*result));
 ret = gmtime_r(timep, result);






 if (ret && !ret->tm_mday) {
  ret = ((void*)0);
  errno = EOVERFLOW;
 }

 return ret;
}
