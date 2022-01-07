
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int portdir; } ;
typedef TYPE_1__ PORT ;


 scalar_t__ portcompare (int ,int ) ;

__attribute__((used)) static void
heapifyports(PORT **pp, size_t size, size_t pos)
{
 size_t i = pos;
 PORT * tmp;

top:

 if ((2 * pos + 1 < size) &&
     (portcompare(pp[i]->portdir, pp[2 * pos + 1]->portdir) < 0))
  i = 2 * pos + 1;
 if ((2 * pos + 2 < size) &&
     (portcompare(pp[i]->portdir, pp[2 * pos + 2]->portdir) < 0))
  i = 2 * pos + 2;


 if (i != pos) {
  tmp = pp[pos];
  pp[pos] = pp[i];
  pp[i] = tmp;
  pos = i;
  goto top;
 }
}
