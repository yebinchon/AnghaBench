
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* id; } ;
struct adapter_params {TYPE_1__ vpd; } ;
struct adapter {int dev; struct adapter_params params; } ;
typedef int buf ;


 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
t4_set_desc(struct adapter *sc)
{
 char buf[128];
 struct adapter_params *p = &sc->params;

 snprintf(buf, sizeof(buf), "Chelsio %s", p->vpd.id);

 device_set_desc_copy(sc->dev, buf);
}
