
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlog_params {int addr; int size; int start; int memtype; } ;
struct TYPE_2__ {struct devlog_params devlog; } ;
struct adapter {TYPE_1__ params; } ;


 int validate_mt_off_len (struct adapter*,int ,int ,int ,int *) ;

__attribute__((used)) static int
fixup_devlog_params(struct adapter *sc)
{
 struct devlog_params *dparams = &sc->params.devlog;
 int rc;

 rc = validate_mt_off_len(sc, dparams->memtype, dparams->start,
     dparams->size, &dparams->addr);

 return (rc);
}
