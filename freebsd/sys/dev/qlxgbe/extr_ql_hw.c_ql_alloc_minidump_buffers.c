
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int ql_alloc_minidump_buffer (int *) ;
 int ql_alloc_minidump_template_buffer (int *) ;
 int ql_free_minidump_template_buffer (int *) ;

__attribute__((used)) static int
ql_alloc_minidump_buffers(qla_host_t *ha)
{
 int ret;

 ret = ql_alloc_minidump_template_buffer(ha);

 if (ret)
  return (ret);

 ret = ql_alloc_minidump_buffer(ha);

 if (ret)
  ql_free_minidump_template_buffer(ha);

 return (ret);
}
