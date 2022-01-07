
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sema {int dummy; } ;


 int PQI_STATUS_SUCCESS ;
 int sema_init (struct sema*,int,char const*) ;

int os_create_semaphore(const char *name, int value, struct sema *sema)
{
    sema_init(sema, value, name);
    return PQI_STATUS_SUCCESS;

}
