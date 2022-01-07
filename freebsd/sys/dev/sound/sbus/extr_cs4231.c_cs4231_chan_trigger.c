
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_channel {int dummy; } ;
typedef int kobj_t ;







 int cs4231_halt (struct cs4231_channel*) ;
 int cs4231_trigger (struct cs4231_channel*) ;

__attribute__((used)) static int
cs4231_chan_trigger(kobj_t obj, void *data, int go)
{
 struct cs4231_channel *ch;

 ch = data;
 switch (go) {
 case 130:
 case 131:
  break;
 case 129:
  cs4231_trigger(ch);
  break;
 case 132:
 case 128:
  cs4231_halt(ch);
  break;
 default:
  break;
 }

 return (0);
}
