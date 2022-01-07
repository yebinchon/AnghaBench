
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_rchinfo {int stereo; } ;
typedef int kobj_t ;






 int aggch_feed_adc_mono (struct agg_rchinfo*) ;
 int aggch_feed_adc_stereo (struct agg_rchinfo*) ;
 int aggch_start_adc (struct agg_rchinfo*) ;
 int aggch_stop_adc (struct agg_rchinfo*) ;

__attribute__((used)) static int
aggrch_trigger(kobj_t obj, void *sc, int go)
{
 struct agg_rchinfo *ch = sc;

 switch (go) {
 case 130:
  if (ch->stereo)
   aggch_feed_adc_stereo(ch);
  else
   aggch_feed_adc_mono(ch);
  break;
 case 129:
  aggch_start_adc(ch);
  break;
 case 131:
 case 128:
  aggch_stop_adc(ch);
  break;
 }
 return 0;
}
