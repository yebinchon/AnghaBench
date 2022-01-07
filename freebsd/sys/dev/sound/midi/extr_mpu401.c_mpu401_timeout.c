
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int cookie; int (* si ) (int ) ;} ;


 int stub1 (int ) ;

void
mpu401_timeout(void *a)
{
 struct mpu401 *m = (struct mpu401 *)a;

 if (m->si)
  (m->si)(m->cookie);

}
