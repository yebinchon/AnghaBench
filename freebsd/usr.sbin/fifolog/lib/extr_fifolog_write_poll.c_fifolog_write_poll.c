
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct fifolog_writer {int dummy; } ;


 int fifolog_write_gzip (struct fifolog_writer*,scalar_t__) ;
 int time (scalar_t__*) ;

int
fifolog_write_poll(struct fifolog_writer *f, time_t now)
{

 if (now == 0)
  time(&now);
 return (fifolog_write_gzip(f, now));
}
