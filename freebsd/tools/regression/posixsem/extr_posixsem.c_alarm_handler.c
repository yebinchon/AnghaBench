
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm_errno ;
 int alarm_id ;
 int errno ;
 scalar_t__ ksem_post (int ) ;

__attribute__((used)) static void
alarm_handler(int signo)
{

 if (ksem_post(alarm_id) < 0)
  alarm_errno = errno;
}
