
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qls_init (int *) ;

__attribute__((used)) static void
qls_error_recovery(void *context, int pending)
{
        qla_host_t *ha = context;

 qls_init(ha);

 return;
}
