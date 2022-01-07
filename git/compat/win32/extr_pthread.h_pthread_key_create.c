
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_key_t ;


 int EAGAIN ;
 int TLS_OUT_OF_INDEXES ;
 int TlsAlloc () ;

__attribute__((used)) static inline int pthread_key_create(pthread_key_t *keyp, void (*destructor)(void *value))
{
 return (*keyp = TlsAlloc()) == TLS_OUT_OF_INDEXES ? EAGAIN : 0;
}
