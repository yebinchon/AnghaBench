
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jmicron_raid_conf {scalar_t__* spare; } ;


 int JMICRON_MAX_SPARE ;

__attribute__((used)) static int
jmicron_meta_total_spare(struct jmicron_raid_conf *meta)
{
 int pos, n;

 n = 0;
 for (pos = 0; pos < JMICRON_MAX_SPARE; pos++) {
  if (meta->spare[pos] != 0)
   n++;
 }
 return (n);
}
