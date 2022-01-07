
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int SND_DEV_STATUS ;
 int UID_ROOT ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int sndstat_cdevsw ;
 int sndstat_dev ;
 int sndstat_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
sndstat_sysinit(void *p)
{
 sx_init(&sndstat_lock, "sndstat lock");
 sndstat_dev = make_dev(&sndstat_cdevsw, SND_DEV_STATUS,
     UID_ROOT, GID_WHEEL, 0644, "sndstat");
}
