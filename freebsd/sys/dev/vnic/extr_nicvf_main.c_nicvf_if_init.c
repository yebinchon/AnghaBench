
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;


 int NICVF_CORE_LOCK (struct nicvf*) ;
 int NICVF_CORE_UNLOCK (struct nicvf*) ;
 int nicvf_if_init_locked (struct nicvf*) ;

__attribute__((used)) static void
nicvf_if_init(void *if_softc)
{
 struct nicvf *nic = if_softc;

 NICVF_CORE_LOCK(nic);
 nicvf_if_init_locked(nic);
 NICVF_CORE_UNLOCK(nic);
}
