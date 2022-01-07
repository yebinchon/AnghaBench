
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int NUMBER ;
 int atoi (int ) ;
 int expect (int ) ;
 int plus_or_minus (struct tm*,int) ;
 int sc_token ;

__attribute__((used)) static void
minus(struct tm *tm)
{
    int delay;

    expect(NUMBER);

    delay = -atoi(sc_token);
    plus_or_minus(tm, delay);
}
