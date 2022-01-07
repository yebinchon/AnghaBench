
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ capMultiFinger; scalar_t__ capAdvancedGestures; scalar_t__ capClickPad; scalar_t__ verticalScroll; } ;
struct TYPE_5__ {int directional_scrolls; int max_x; int max_y; int two_finger_scroll; int min_pressure; int max_pressure; int max_width; int margin_top; int margin_right; int margin_bottom; int margin_left; int na_top; int na_right; int na_bottom; int na_left; int window_min; int window_max; int multiplicator; int weight_current; int weight_previous; int weight_previous_na; int weight_len_squared; int div_min; int div_max; int div_max_na; int div_len; int tap_max_delta; int tap_min_queue; int vscroll_ver_area; int vscroll_min_delta; int vscroll_div_min; int vscroll_div_max; scalar_t__ softbutton3_x; scalar_t__ softbutton2_x; scalar_t__ softbuttons_y; int * sysctl_tree; int sysctl_ctx; scalar_t__ natural_scroll; scalar_t__ three_finger_drag; scalar_t__ touchpad_off; scalar_t__ vscroll_hor_area; int taphold_timeout; } ;
struct TYPE_4__ {scalar_t__ in_taphold; } ;
struct psm_softc {TYPE_3__ synhw; TYPE_2__ syninfo; TYPE_1__ gesture; } ;


 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYNAPTICS_SYSCTL_DIV_LEN ;
 int SYNAPTICS_SYSCTL_DIV_MAX ;
 int SYNAPTICS_SYSCTL_DIV_MAX_NA ;
 int SYNAPTICS_SYSCTL_DIV_MIN ;
 int SYNAPTICS_SYSCTL_MARGIN_BOTTOM ;
 int SYNAPTICS_SYSCTL_MARGIN_LEFT ;
 int SYNAPTICS_SYSCTL_MARGIN_RIGHT ;
 int SYNAPTICS_SYSCTL_MARGIN_TOP ;
 int SYNAPTICS_SYSCTL_MAX_PRESSURE ;
 int SYNAPTICS_SYSCTL_MAX_WIDTH ;
 int SYNAPTICS_SYSCTL_MIN_PRESSURE ;
 int SYNAPTICS_SYSCTL_MULTIPLICATOR ;
 int SYNAPTICS_SYSCTL_NATURAL_SCROLL ;
 int SYNAPTICS_SYSCTL_NA_BOTTOM ;
 int SYNAPTICS_SYSCTL_NA_LEFT ;
 int SYNAPTICS_SYSCTL_NA_RIGHT ;
 int SYNAPTICS_SYSCTL_NA_TOP ;
 int SYNAPTICS_SYSCTL_TAPHOLD_TIMEOUT ;
 int SYNAPTICS_SYSCTL_TAP_MAX_DELTA ;
 int SYNAPTICS_SYSCTL_TAP_MIN_QUEUE ;
 int SYNAPTICS_SYSCTL_THREE_FINGER_DRAG ;
 int SYNAPTICS_SYSCTL_TOUCHPAD_OFF ;
 int SYNAPTICS_SYSCTL_VSCROLL_DIV_MAX ;
 int SYNAPTICS_SYSCTL_VSCROLL_DIV_MIN ;
 int SYNAPTICS_SYSCTL_VSCROLL_HOR_AREA ;
 int SYNAPTICS_SYSCTL_VSCROLL_MIN_DELTA ;
 int SYNAPTICS_SYSCTL_VSCROLL_VER_AREA ;
 int SYNAPTICS_SYSCTL_WEIGHT_CURRENT ;
 int SYNAPTICS_SYSCTL_WEIGHT_LEN_SQUARED ;
 int SYNAPTICS_SYSCTL_WEIGHT_PREVIOUS ;
 int SYNAPTICS_SYSCTL_WEIGHT_PREVIOUS_NA ;
 int SYNAPTICS_SYSCTL_WINDOW_MAX ;
 int SYNAPTICS_SYSCTL_WINDOW_MIN ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int*,int ,char*) ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,char const*,int,int ,char const*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct psm_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_psm ;
 int synaptics_sysctl ;
 int synaptics_sysctl_create_softbuttons_tree (struct psm_softc*) ;
 int sysctl_ctx_init (int *) ;
 int tap_timeout ;

__attribute__((used)) static void
synaptics_sysctl_create_tree(struct psm_softc *sc, const char *name,
    const char *descr)
{

 if (sc->syninfo.sysctl_tree != ((void*)0))
  return;


 sysctl_ctx_init(&sc->syninfo.sysctl_ctx);
 sc->syninfo.sysctl_tree = SYSCTL_ADD_NODE(&sc->syninfo.sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_hw_psm), OID_AUTO, name, CTLFLAG_RD,
     0, descr);


 sc->syninfo.directional_scrolls = 0;
 SYSCTL_ADD_INT(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "directional_scrolls", CTLFLAG_RW|CTLFLAG_ANYBODY,
     &sc->syninfo.directional_scrolls, 0,
     "Enable hardware scrolling pad (if non-zero) or register it as "
     "extended buttons (if 0)");


 sc->syninfo.max_x = 6143;
 SYSCTL_ADD_INT(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "max_x", CTLFLAG_RD|CTLFLAG_ANYBODY,
     &sc->syninfo.max_x, 0,
     "Horizontal reporting range");


 sc->syninfo.max_y = 6143;
 SYSCTL_ADD_INT(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "max_y", CTLFLAG_RD|CTLFLAG_ANYBODY,
     &sc->syninfo.max_y, 0,
     "Vertical reporting range");






 if (sc->synhw.verticalScroll || (sc->synhw.capMultiFinger == 0 &&
      sc->synhw.capAdvancedGestures == 0))
  sc->syninfo.two_finger_scroll = 0;
 else
  sc->syninfo.two_finger_scroll = 1;

 SYSCTL_ADD_INT(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "two_finger_scroll", CTLFLAG_RW|CTLFLAG_ANYBODY,
     &sc->syninfo.two_finger_scroll, 0,
     "Enable two finger scrolling");


 sc->syninfo.min_pressure = 32;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "min_pressure", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MIN_PRESSURE,
     synaptics_sysctl, "I",
     "Minimum pressure required to start an action");


 sc->syninfo.max_pressure = 220;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "max_pressure", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MAX_PRESSURE,
     synaptics_sysctl, "I",
     "Maximum pressure to detect palm");


 sc->syninfo.max_width = 10;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "max_width", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MAX_WIDTH,
     synaptics_sysctl, "I",
     "Maximum finger width to detect palm");


 sc->syninfo.margin_top = 200;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "margin_top", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MARGIN_TOP,
     synaptics_sysctl, "I",
     "Top margin");


 sc->syninfo.margin_right = 200;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "margin_right", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MARGIN_RIGHT,
     synaptics_sysctl, "I",
     "Right margin");


 sc->syninfo.margin_bottom = 200;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "margin_bottom", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MARGIN_BOTTOM,
     synaptics_sysctl, "I",
     "Bottom margin");


 sc->syninfo.margin_left = 200;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "margin_left", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MARGIN_LEFT,
     synaptics_sysctl, "I",
     "Left margin");


 sc->syninfo.na_top = 1783;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "na_top", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_NA_TOP,
     synaptics_sysctl, "I",
     "Top noisy area, where weight_previous_na is used instead "
     "of weight_previous");


 sc->syninfo.na_right = 563;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "na_right", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_NA_RIGHT,
     synaptics_sysctl, "I",
     "Right noisy area, where weight_previous_na is used instead "
     "of weight_previous");


 sc->syninfo.na_bottom = 1408;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "na_bottom", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_NA_BOTTOM,
     synaptics_sysctl, "I",
     "Bottom noisy area, where weight_previous_na is used instead "
     "of weight_previous");


 sc->syninfo.na_left = 1600;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "na_left", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_NA_LEFT,
     synaptics_sysctl, "I",
     "Left noisy area, where weight_previous_na is used instead "
     "of weight_previous");


 sc->syninfo.window_min = 4;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "window_min", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WINDOW_MIN,
     synaptics_sysctl, "I",
     "Minimum window size to start an action");


 sc->syninfo.window_max = 10;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "window_max", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WINDOW_MAX,
     synaptics_sysctl, "I",
     "Maximum window size");


 sc->syninfo.multiplicator = 10000;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "multiplicator", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_MULTIPLICATOR,
     synaptics_sysctl, "I",
     "Multiplicator to increase precision in averages and divisions");


 sc->syninfo.weight_current = 3;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "weight_current", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WEIGHT_CURRENT,
     synaptics_sysctl, "I",
     "Weight of the current movement in the new average");


 sc->syninfo.weight_previous = 6;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "weight_previous", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WEIGHT_PREVIOUS,
     synaptics_sysctl, "I",
     "Weight of the previous average");


 sc->syninfo.weight_previous_na = 20;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "weight_previous_na", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WEIGHT_PREVIOUS_NA,
     synaptics_sysctl, "I",
     "Weight of the previous average (inside the noisy area)");


 sc->syninfo.weight_len_squared = 2000;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "weight_len_squared", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_WEIGHT_LEN_SQUARED,
     synaptics_sysctl, "I",
     "Length (squared) of segments where weight_previous "
     "starts to decrease");


 sc->syninfo.div_min = 9;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "div_min", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_DIV_MIN,
     synaptics_sysctl, "I",
     "Divisor for fast movements");


 sc->syninfo.div_max = 17;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "div_max", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_DIV_MAX,
     synaptics_sysctl, "I",
     "Divisor for slow movements");


 sc->syninfo.div_max_na = 30;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "div_max_na", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_DIV_MAX_NA,
     synaptics_sysctl, "I",
     "Divisor with slow movements (inside the noisy area)");


 sc->syninfo.div_len = 100;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "div_len", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_DIV_LEN,
     synaptics_sysctl, "I",
     "Length of segments where div_max starts to decrease");


 sc->syninfo.tap_max_delta = 80;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "tap_max_delta", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_TAP_MAX_DELTA,
     synaptics_sysctl, "I",
     "Length of segments above which a tap is ignored");


 sc->syninfo.tap_min_queue = 2;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "tap_min_queue", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_TAP_MIN_QUEUE,
     synaptics_sysctl, "I",
     "Number of packets required to consider a tap");


 sc->gesture.in_taphold = 0;
 sc->syninfo.taphold_timeout = tap_timeout;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "taphold_timeout", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_TAPHOLD_TIMEOUT,
     synaptics_sysctl, "I",
     "Maximum elapsed time between two taps to consider a tap-hold "
     "action");


 sc->syninfo.vscroll_hor_area = 0;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "vscroll_hor_area", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_VSCROLL_HOR_AREA,
     synaptics_sysctl, "I",
     "Area reserved for horizontal virtual scrolling");


 sc->syninfo.vscroll_ver_area = -400 - sc->syninfo.margin_right;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "vscroll_ver_area", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_VSCROLL_VER_AREA,
     synaptics_sysctl, "I",
     "Area reserved for vertical virtual scrolling");


 sc->syninfo.vscroll_min_delta = 50;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "vscroll_min_delta", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_VSCROLL_MIN_DELTA,
     synaptics_sysctl, "I",
     "Minimum movement to consider virtual scrolling");


 sc->syninfo.vscroll_div_min = 100;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "vscroll_div_min", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_VSCROLL_DIV_MIN,
     synaptics_sysctl, "I",
     "Divisor for fast scrolling");


 sc->syninfo.vscroll_div_max = 150;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "vscroll_div_max", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_VSCROLL_DIV_MAX,
     synaptics_sysctl, "I",
     "Divisor for slow scrolling");


 sc->syninfo.touchpad_off = 0;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "touchpad_off", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_TOUCHPAD_OFF,
     synaptics_sysctl, "I",
     "Turn off touchpad");

 sc->syninfo.three_finger_drag = 0;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "three_finger_drag", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_THREE_FINGER_DRAG,
     synaptics_sysctl, "I",
     "Enable dragging with three fingers");


 sc->syninfo.natural_scroll = 0;
 SYSCTL_ADD_PROC(&sc->syninfo.sysctl_ctx,
     SYSCTL_CHILDREN(sc->syninfo.sysctl_tree), OID_AUTO,
     "natural_scroll", CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_ANYBODY,
     sc, SYNAPTICS_SYSCTL_NATURAL_SCROLL,
     synaptics_sysctl, "I",
     "Enable natural scrolling");

 sc->syninfo.softbuttons_y = 0;
 sc->syninfo.softbutton2_x = 0;
 sc->syninfo.softbutton3_x = 0;


 if (sc->synhw.capClickPad)
  synaptics_sysctl_create_softbuttons_tree(sc);
}
