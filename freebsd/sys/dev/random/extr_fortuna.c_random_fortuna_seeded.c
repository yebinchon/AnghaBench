
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __predict_true (int) ;
 scalar_t__ block_seeded_status ;
 int random_fortuna_pre_read () ;
 int random_fortuna_seeded_internal () ;

__attribute__((used)) static bool
random_fortuna_seeded(void)
{






 if (__predict_true(random_fortuna_seeded_internal()))
  return (1);





 random_fortuna_pre_read();

 return (random_fortuna_seeded_internal());
}
