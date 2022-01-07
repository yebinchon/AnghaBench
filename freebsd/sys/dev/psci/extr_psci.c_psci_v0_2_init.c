
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psci_softc {int psci_version; int * psci_fnids; } ;
typedef int device_t ;


 int EVENTHANDLER_REGISTER (int ,int ,struct psci_softc*,int ) ;
 int PSCI_FNID_AFFINITY_INFO ;
 int PSCI_FNID_CPU_OFF ;
 int PSCI_FNID_CPU_ON ;
 int PSCI_FNID_CPU_SUSPEND ;
 int PSCI_FNID_MIGRATE ;
 int PSCI_FNID_MIGRATE_INFO_TYPE ;
 int PSCI_FNID_MIGRATE_INFO_UP_CPU ;
 int PSCI_FNID_SYSTEM_OFF ;
 int PSCI_FNID_SYSTEM_RESET ;
 int PSCI_FNID_VERSION ;
 size_t PSCI_FN_AFFINITY_INFO ;
 size_t PSCI_FN_CPU_OFF ;
 size_t PSCI_FN_CPU_ON ;
 size_t PSCI_FN_CPU_SUSPEND ;
 size_t PSCI_FN_MIGRATE ;
 size_t PSCI_FN_MIGRATE_INFO_TYPE ;
 size_t PSCI_FN_MIGRATE_INFO_UP_CPU ;
 size_t PSCI_FN_SYSTEM_OFF ;
 size_t PSCI_FN_SYSTEM_RESET ;
 size_t PSCI_FN_VERSION ;
 int PSCI_RETVAL_NOT_SUPPORTED ;
 int PSCI_VER_MAJOR (int) ;
 int PSCI_VER_MINOR (int) ;
 int SHUTDOWN_PRI_LAST ;
 int _psci_get_version (struct psci_softc*) ;
 scalar_t__ bootverbose ;
 struct psci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,int,int) ;
 int psci_shutdown ;
 int shutdown_final ;

__attribute__((used)) static int
psci_v0_2_init(device_t dev, int default_version)
{
 struct psci_softc *sc = device_get_softc(dev);
 int version;


 sc->psci_fnids[PSCI_FN_VERSION] = PSCI_FNID_VERSION;
 sc->psci_fnids[PSCI_FN_CPU_SUSPEND] = PSCI_FNID_CPU_SUSPEND;
 sc->psci_fnids[PSCI_FN_CPU_OFF] = PSCI_FNID_CPU_OFF;
 sc->psci_fnids[PSCI_FN_CPU_ON] = PSCI_FNID_CPU_ON;
 sc->psci_fnids[PSCI_FN_AFFINITY_INFO] = PSCI_FNID_AFFINITY_INFO;
 sc->psci_fnids[PSCI_FN_MIGRATE] = PSCI_FNID_MIGRATE;
 sc->psci_fnids[PSCI_FN_MIGRATE_INFO_TYPE] = PSCI_FNID_MIGRATE_INFO_TYPE;
 sc->psci_fnids[PSCI_FN_MIGRATE_INFO_UP_CPU] = PSCI_FNID_MIGRATE_INFO_UP_CPU;
 sc->psci_fnids[PSCI_FN_SYSTEM_OFF] = PSCI_FNID_SYSTEM_OFF;
 sc->psci_fnids[PSCI_FN_SYSTEM_RESET] = PSCI_FNID_SYSTEM_RESET;

 version = _psci_get_version(sc);






 if (version == PSCI_RETVAL_NOT_SUPPORTED) {
  if (default_version == PSCI_RETVAL_NOT_SUPPORTED)
   return (1);

  version = default_version;
  printf("PSCI get_version() function is not implemented, "
      " assuming v%d.%d\n", PSCI_VER_MAJOR(version),
      PSCI_VER_MINOR(version));
 }

 sc->psci_version = version;
 if ((PSCI_VER_MAJOR(version) == 0 && PSCI_VER_MINOR(version) == 2) ||
     PSCI_VER_MAJOR(version) == 1) {
  if (bootverbose)
   device_printf(dev, "PSCI version 0.2 compatible\n");





  EVENTHANDLER_REGISTER(shutdown_final, psci_shutdown, sc,
      SHUTDOWN_PRI_LAST);

  return (0);
 }

 device_printf(dev, "PSCI version number mismatched with DT\n");
 return (1);
}
