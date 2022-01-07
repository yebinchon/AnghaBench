
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int * ts_lockobj; } ;


 int MPASS (int ) ;

void
turnstile_assert(struct turnstile *ts)
{
 MPASS(ts->ts_lockobj == ((void*)0));
}
