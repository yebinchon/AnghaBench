
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sema {int dummy; } ;


 int sema_post (struct sema*) ;

void inline os_sema_lock(struct sema *sema)
{
 sema_post(sema);
}
