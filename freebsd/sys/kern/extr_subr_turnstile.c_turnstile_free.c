
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;


 int turnstile_zone ;
 int uma_zfree (int ,struct turnstile*) ;

void
turnstile_free(struct turnstile *ts)
{

 uma_zfree(turnstile_zone, ts);
}
