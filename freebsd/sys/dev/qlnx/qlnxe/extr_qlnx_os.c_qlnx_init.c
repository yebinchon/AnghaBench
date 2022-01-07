
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qlnx_host_t ;


 int QLNX_LOCK (int *) ;
 int QLNX_UNLOCK (int *) ;
 int QL_DPRINT2 (int *,char*) ;
 int qlnx_init_locked (int *) ;

__attribute__((used)) static void
qlnx_init(void *arg)
{
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)arg;

 QL_DPRINT2(ha, "enter\n");

 QLNX_LOCK(ha);
 qlnx_init_locked(ha);
 QLNX_UNLOCK(ha);

 QL_DPRINT2(ha, "exit\n");

 return;
}
