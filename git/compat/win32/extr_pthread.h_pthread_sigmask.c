
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;



__attribute__((used)) static inline int pthread_sigmask(int how, const sigset_t *set, sigset_t *oset)
{
 return 0;
}
