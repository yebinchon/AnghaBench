
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPU_CLR_ATOMIC (int ,int *) ;
 int CPU_ISSET (int ,int *) ;
 int PCPU_GET (int ) ;
 int cpustop_handler () ;
 int ipi_stop_nmi_pending ;

int
ipi_nmi_handler(void)
{
 u_int cpuid;







 cpuid = PCPU_GET(cpuid);
 if (!CPU_ISSET(cpuid, &ipi_stop_nmi_pending))
  return (1);

 CPU_CLR_ATOMIC(cpuid, &ipi_stop_nmi_pending);
 cpustop_handler();
 return (0);
}
