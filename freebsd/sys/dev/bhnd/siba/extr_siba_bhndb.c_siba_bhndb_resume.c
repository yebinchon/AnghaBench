
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siba_bhndb_softc {int dummy; } ;
typedef int device_t ;


 struct siba_bhndb_softc* device_get_softc (int ) ;
 int siba_bhndb_wars_hwup (struct siba_bhndb_softc*) ;
 int siba_resume (int ) ;

__attribute__((used)) static int
siba_bhndb_resume(device_t dev)
{
 struct siba_bhndb_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = siba_bhndb_wars_hwup(sc)))
  return (error);


 return (siba_resume(dev));
}
