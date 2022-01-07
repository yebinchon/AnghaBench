
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sema {int dummy; } ;


 int PQI_STATUS_SUCCESS ;
 int sema_destroy (struct sema*) ;

int os_destroy_semaphore(struct sema *sema)
{
    sema_destroy(sema);
    return PQI_STATUS_SUCCESS;

}
