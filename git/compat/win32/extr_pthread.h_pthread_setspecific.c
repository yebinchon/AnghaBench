
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_key_t ;


 int EINVAL ;
 scalar_t__ TlsSetValue (int ,void*) ;

__attribute__((used)) static inline int pthread_setspecific(pthread_key_t key, const void *value)
{
 return TlsSetValue(key, (void *)value) ? 0 : EINVAL;
}
