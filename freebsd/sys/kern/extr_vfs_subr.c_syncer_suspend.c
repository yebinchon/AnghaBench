
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int syncer_shutdown (int ,int ) ;
 int updateproc ;

void
syncer_suspend(void)
{

 syncer_shutdown(updateproc, 0);
}
