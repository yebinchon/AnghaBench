
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; } ;


 int device_get_nameunit (int ) ;
 int panic (char*,int ) ;

__attribute__((used)) static void
delayed_panic(void *arg)
{
 struct adapter *sc = arg;

 panic("%s: panic on fatal error", device_get_nameunit(sc->dev));
}
