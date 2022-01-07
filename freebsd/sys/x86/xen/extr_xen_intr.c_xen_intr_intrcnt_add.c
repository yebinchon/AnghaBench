
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xen_intr_pcpu_data {int * evtchn_intrcnt; } ;
typedef int buf ;


 struct xen_intr_pcpu_data* DPCPU_ID_PTR (int,int ) ;
 int MAXCOMLEN ;
 int intrcnt_add (char*,int **) ;
 int snprintf (char*,int,char*,int) ;
 int xen_intr_pcpu ;

__attribute__((used)) static void
xen_intr_intrcnt_add(u_int cpu)
{
 char buf[MAXCOMLEN + 1];
 struct xen_intr_pcpu_data *pcpu;

 pcpu = DPCPU_ID_PTR(cpu, xen_intr_pcpu);
 if (pcpu->evtchn_intrcnt != ((void*)0))
  return;

 snprintf(buf, sizeof(buf), "cpu%d:xen", cpu);
 intrcnt_add(buf, &pcpu->evtchn_intrcnt);
}
