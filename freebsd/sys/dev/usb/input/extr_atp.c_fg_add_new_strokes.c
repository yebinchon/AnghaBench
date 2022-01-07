
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int ;
struct atp_softc {int dummy; } ;
struct TYPE_6__ {int matched; size_t cum; } ;
typedef TYPE_1__ fg_pspan ;
typedef size_t atp_axis ;


 int FG_MAX_PSPANS_PER_AXIS ;
 size_t X ;
 size_t Y ;
 size_t abs (size_t) ;
 int fg_add_stroke (struct atp_softc*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
fg_add_new_strokes(struct atp_softc *sc, fg_pspan *pspans_x,
    u_int n_xpspans, fg_pspan *pspans_y, u_int n_ypspans)
{
 fg_pspan spans[2][FG_MAX_PSPANS_PER_AXIS];
 u_int nspans[2];
 u_int i;
 u_int j;


 for (i = 0, nspans[X] = 0; i < n_xpspans; i++) {
  if (pspans_x[i].matched == 0) {
   spans[X][nspans[X]] = pspans_x[i];
   nspans[X]++;
  }
 }
 for (j = 0, nspans[Y] = 0; j < n_ypspans; j++) {
  if (pspans_y[j].matched == 0) {
   spans[Y][nspans[Y]] = pspans_y[j];
   nspans[Y]++;
  }
 }

 if (nspans[X] == nspans[Y]) {

  for (i = 0, j = 0; (i < nspans[X]) && (j < nspans[Y]); i++, j++)
   fg_add_stroke(sc, &spans[X][i], &spans[Y][j]);
 } else {
  u_int cum = 0;
  atp_axis repeat_axis;
  u_int repeat_count;
  u_int repeat_index = 0;

  repeat_axis = (nspans[X] > nspans[Y]) ? Y : X;
  repeat_count = abs(nspans[X] - nspans[Y]);
  for (i = 0; i < nspans[repeat_axis]; i++) {
   if (spans[repeat_axis][i].cum > cum) {
    repeat_index = i;
    cum = spans[repeat_axis][i].cum;
   }
  }


  i = 0, j = 0;
  for (; (i < nspans[X]) && (j < nspans[Y]); i++, j++) {
   fg_add_stroke(sc, &spans[X][i], &spans[Y][j]);


   if (repeat_count > 0) {
    if ((repeat_axis == X) &&
        (repeat_index == i)) {
     i--;
     repeat_count--;
    } else if ((repeat_axis == Y) &&
        (repeat_index == j)) {
     j--;
     repeat_count--;
    }
   }
  }
 }
}
