
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_hashmap {int mutex; } ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void hashmap_unlock(struct attr_hashmap *map)
{
 pthread_mutex_unlock(&map->mutex);
}
