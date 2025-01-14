
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct est_softc {int flist_len; int freq_list; } ;
typedef int device_t ;


 int ENXIO ;
 int MSR_PERF_STATUS ;
 char* cpu_vendor ;
 struct est_softc* device_get_softc (int ) ;
 int est_acpi_info (int ,int *,int *) ;
 int est_msr_info (int ,int ,int *,int *) ;
 int est_table_info (int ,int ,int *,int *) ;
 int printf (char*,char*,int ) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
est_get_info(device_t dev)
{
 struct est_softc *sc;
 uint64_t msr;
 int error;

 sc = device_get_softc(dev);
 msr = rdmsr(MSR_PERF_STATUS);
 error = est_table_info(dev, msr, &sc->freq_list, &sc->flist_len);
 if (error)
  error = est_acpi_info(dev, &sc->freq_list, &sc->flist_len);
 if (error)
  error = est_msr_info(dev, msr, &sc->freq_list, &sc->flist_len);

 if (error) {
  printf(
 "est: CPU supports Enhanced Speedstep, but is not recognized.\n"
 "est: cpu_vendor %s, msr %0jx\n", cpu_vendor, msr);
  return (ENXIO);
 }

 return (0);
}
