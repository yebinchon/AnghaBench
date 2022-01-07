
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MG_GUARD_ALLLARGE ;
 unsigned long PAGE_SIZE ;
 int memguard_frequency ;
 int memguard_frequency_hits ;
 unsigned long memguard_minsize ;
 int memguard_minsize_reject ;
 int memguard_options ;
 int random () ;

__attribute__((used)) static int
memguard_cmp(unsigned long size)
{

 if (size < memguard_minsize) {
  memguard_minsize_reject++;
  return (0);
 }
 if ((memguard_options & MG_GUARD_ALLLARGE) != 0 && size >= PAGE_SIZE)
  return (1);
 if (memguard_frequency > 0 &&
     (random() % 100000) < memguard_frequency) {
  memguard_frequency_hits++;
  return (1);
 }

 return (0);
}
