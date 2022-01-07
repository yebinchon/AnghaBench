
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rlim_t ;
typedef int int64_t ;
typedef int buf ;
struct TYPE_2__ {int suffix; } ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_GETSCALE ;
 scalar_t__ RLIM_INFINITY ;
 int humanize_number (char*,int,int ,int ,int,int ) ;
 TYPE_1__* rlimit_param ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static const char *
humanize_rlimit(int indx, rlim_t limit)
{
 static char buf[14];
 int scale;

 if (limit == RLIM_INFINITY)
  return ("infinity     ");

 scale = humanize_number(buf, sizeof(buf) - 1, (int64_t)limit,
     rlimit_param[indx].suffix, HN_AUTOSCALE | HN_GETSCALE, HN_DECIMAL);
 (void)humanize_number(buf, sizeof(buf) - 1, (int64_t)limit,
     rlimit_param[indx].suffix, HN_AUTOSCALE, HN_DECIMAL);

 if (scale == 0)
  sprintf(buf + strlen(buf), " ");
 return (buf);
}
