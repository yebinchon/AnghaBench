
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ speed_t ;
struct TYPE_3__ {scalar_t__ speed; scalar_t__ string; } ;
typedef TYPE_1__ SPEEDS ;


 scalar_t__ atol (char*) ;
 int errx (int,char*,char*) ;
 TYPE_1__* speeds ;
 int strcasecmp (char*,scalar_t__) ;

__attribute__((used)) static speed_t
tset_baudrate(char *rate)
{
 SPEEDS *sp;
 speed_t speed;


 if (*rate == 'B')
  ++rate;

 for (sp = speeds; sp->string; ++sp)
  if (!strcasecmp(rate, sp->string))
   return (sp->speed);
 speed = atol(rate);
 if (speed == 0)
  errx(1, "unknown baud rate %s", rate);
 return speed;
}
