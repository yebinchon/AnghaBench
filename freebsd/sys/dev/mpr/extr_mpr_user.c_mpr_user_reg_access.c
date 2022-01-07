
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct TYPE_3__ {int Command; int RegData; int RegOffset; } ;
typedef TYPE_1__ mpr_reg_access_t ;


 int EINVAL ;
 int MPR_USER ;




 int mpr_dprint (struct mpr_softc*,int ,char*) ;
 int mpr_regread (struct mpr_softc*,int ) ;
 int mpr_regwrite (struct mpr_softc*,int ,int ) ;

__attribute__((used)) static int
mpr_user_reg_access(struct mpr_softc *sc, mpr_reg_access_t *data)
{
 int status = 0;

 switch (data->Command) {



  case 131:
  case 130:
   mpr_dprint(sc, MPR_USER, "IO access is not supported. "
       "Use memory access.");
   status = EINVAL;
   break;

  case 129:
   data->RegData = mpr_regread(sc, data->RegOffset);
   break;

  case 128:
   mpr_regwrite(sc, data->RegOffset, data->RegData);
   break;

  default:
   status = EINVAL;
   break;
 }

 return (status);
}
