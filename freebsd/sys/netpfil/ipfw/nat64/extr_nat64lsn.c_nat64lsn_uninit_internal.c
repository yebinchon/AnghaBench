
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JQUEUE_LOCK_DESTROY () ;
 int nat64lsn_aliaslink_zone ;
 int nat64lsn_host_zone ;
 int nat64lsn_job_zone ;
 int nat64lsn_pg_zone ;
 int nat64lsn_pgchunk_zone ;
 int nat64lsn_state_zone ;
 int uma_zdestroy (int ) ;

void
nat64lsn_uninit_internal(void)
{


 JQUEUE_LOCK_DESTROY();
 uma_zdestroy(nat64lsn_host_zone);
 uma_zdestroy(nat64lsn_pgchunk_zone);
 uma_zdestroy(nat64lsn_pg_zone);
 uma_zdestroy(nat64lsn_aliaslink_zone);
 uma_zdestroy(nat64lsn_state_zone);
 uma_zdestroy(nat64lsn_job_zone);
}
