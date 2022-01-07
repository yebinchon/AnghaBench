
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int ql_get_stats (int *) ;

__attribute__((used)) static void
qla_stats(void *context, int pending)
{
        qla_host_t *ha;

        ha = context;

 ql_get_stats(ha);

 return;
}
