
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mps_softc {int dummy; } ;
struct TYPE_3__ {int Command; int RegData; int RegOffset; } ;
typedef TYPE_1__ mps_reg_access_t ;


 int EINVAL ;
 int MPS_USER ;




 int mps_dprint (struct mps_softc*,int ,char*) ;
 int mps_regread (struct mps_softc*,int ) ;
 int mps_regwrite (struct mps_softc*,int ,int ) ;

__attribute__((used)) static int
mps_user_reg_access(struct mps_softc *sc, mps_reg_access_t *data)
{
 int status = 0;

 switch (data->Command) {



  case 131:
  case 130:
   mps_dprint(sc, MPS_USER, "IO access is not supported. "
       "Use memory access.");
   status = EINVAL;
   break;

  case 129:
   data->RegData = mps_regread(sc, data->RegOffset);
   break;

  case 128:
   mps_regwrite(sc, data->RegOffset, data->RegData);
   break;

  default:
   status = EINVAL;
   break;
 }

 return (status);
}
