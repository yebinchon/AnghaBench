
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;


 int M_WAITOK ;
 int turnstile_zone ;
 struct turnstile* uma_zalloc (int ,int ) ;

struct turnstile *
turnstile_alloc(void)
{

 return (uma_zalloc(turnstile_zone, M_WAITOK));
}
