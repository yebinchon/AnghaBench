
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_mixer_node {scalar_t__ type; int minval; int maxval; int mul; } ;
typedef int int32_t ;


 int DPRINTFN (int,char*,scalar_t__,int,int,int,int) ;
 scalar_t__ MIX_ON_OFF ;
 scalar_t__ MIX_SELECTOR ;

__attribute__((used)) static int
uaudio_mixer_bsd2value(struct uaudio_mixer_node *mc, int32_t val)
{
 if (mc->type == MIX_ON_OFF) {
  val = (val != 0);
 } else if (mc->type == MIX_SELECTOR) {
  if ((val < mc->minval) ||
      (val > mc->maxval)) {
   val = mc->minval;
  }
 } else {


  val = (val * mc->mul) / 255;


  val = val + mc->minval;


  if (val > mc->maxval)
   val = mc->maxval;
  else if (val < mc->minval)
   val = mc->minval;
 }

 DPRINTFN(6, "type=0x%03x val=%d min=%d max=%d val=%d\n",
     mc->type, val, mc->minval, mc->maxval, val);
 return (val);
}
