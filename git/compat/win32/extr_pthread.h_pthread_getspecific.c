
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_key_t ;


 void* TlsGetValue (int ) ;

__attribute__((used)) static inline void *pthread_getspecific(pthread_key_t key)
{
 return TlsGetValue(key);
}
