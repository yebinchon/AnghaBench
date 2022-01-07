
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int done ;
 int log_notice (char*,int ,int ) ;

__attribute__((used)) static void
sighandler(int32_t s)
{
 log_notice("Got signal %d. Total number of signals received %d",
  s, ++ done);
}
