
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int kproc_exit (int ) ;
 int wakeup_one (void*) ;

__attribute__((used)) static void
crypto_finis(void *chan)
{
 CRYPTO_DRIVER_LOCK();
 wakeup_one(chan);
 CRYPTO_DRIVER_UNLOCK();
 kproc_exit(0);
}
