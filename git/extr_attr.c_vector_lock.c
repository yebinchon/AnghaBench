
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;


 TYPE_1__ check_vector ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static inline void vector_lock(void)
{
 pthread_mutex_lock(&check_vector.mutex);
}
