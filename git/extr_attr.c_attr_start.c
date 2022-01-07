
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {int mutex; } ;


 TYPE_2__ check_vector ;
 TYPE_1__ g_attr_hashmap ;
 int pthread_mutex_init (int *,int *) ;

void attr_start(void)
{
 pthread_mutex_init(&g_attr_hashmap.mutex, ((void*)0));
 pthread_mutex_init(&check_vector.mutex, ((void*)0));
}
