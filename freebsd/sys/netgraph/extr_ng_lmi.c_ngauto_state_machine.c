
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
struct TYPE_5__ {scalar_t__ poll_count; int poll_state; int lmi_channel0; int lmi_channel; int lmi_channel1023; } ;


 scalar_t__ LMIPOLLSIZE ;
 int LOG_WARNING ;
 int SCF_ANNEX_A ;
 int SCF_ANNEX_D ;
 int SCF_GROUP4 ;
 int SETLMITYPE (TYPE_1__*,int ) ;
 int log (int ,char*) ;
 int nglmi_inquire (TYPE_1__*,int ) ;

__attribute__((used)) static void
ngauto_state_machine(sc_p sc)
{
 if ((sc->poll_count <= 0) || (sc->poll_count > LMIPOLLSIZE)) {


  sc->poll_count = LMIPOLLSIZE;
  sc->poll_state++;
 }
 switch (sc->poll_state) {
 case 7:
  log(LOG_WARNING, "nglmi: no response from exchange\n");
 default:
  sc->poll_state = 1;
 case 1:
  sc->lmi_channel = sc->lmi_channel0;
  SETLMITYPE(sc, SCF_ANNEX_D);
  break;
 case 2:
  sc->lmi_channel = sc->lmi_channel1023;
  SETLMITYPE(sc, SCF_ANNEX_D);
  break;
 case 3:
  sc->lmi_channel = sc->lmi_channel0;
  SETLMITYPE(sc, SCF_ANNEX_A);
  break;
 case 4:
  sc->lmi_channel = sc->lmi_channel1023;
  SETLMITYPE(sc, SCF_GROUP4);
  break;
 case 5:
  sc->lmi_channel = sc->lmi_channel1023;
  SETLMITYPE(sc, SCF_ANNEX_A);
  break;
 case 6:
  sc->lmi_channel = sc->lmi_channel0;
  SETLMITYPE(sc, SCF_GROUP4);
  break;
 }


 nglmi_inquire(sc, 0);
 sc->poll_count--;
}
