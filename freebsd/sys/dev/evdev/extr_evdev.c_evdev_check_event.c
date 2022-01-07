
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct evdev_dev {int ev_sw_flags; int ev_snd_flags; int ev_led_flags; int ev_msc_flags; int ev_abs_flags; int * ev_mt; int ev_rel_flags; int ev_key_flags; } ;
typedef int int32_t ;


 int ABS_CNT ;
 int ABS_IS_MT (int) ;
 int ABS_MT_SLOT ;
 int EINVAL ;

 int EV_CNT ;
 int KEY_CNT ;
 int LED_CNT ;
 int MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 int MSC_CNT ;
 int REL_CNT ;
 int REP_CNT ;
 int SND_CNT ;
 int SW_CNT ;
 int SYN_CNT ;
 int bit_test (int ,int) ;
 int evdev_event_supported (struct evdev_dev*,int) ;

__attribute__((used)) static int
evdev_check_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{

 if (type >= EV_CNT)
  return (EINVAL);


 if (type != 128 && !evdev_event_supported(evdev, type))
  return (EINVAL);

 switch (type) {
 case 128:
  if (code >= SYN_CNT)
   return (EINVAL);
  break;

 case 135:
  if (code >= KEY_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_key_flags, code))
   return (EINVAL);
  break;

 case 132:
  if (code >= REL_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_rel_flags, code))
   return (EINVAL);
  break;

 case 136:
  if (code >= ABS_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_abs_flags, code))
   return (EINVAL);
  if (code == ABS_MT_SLOT &&
      (value < 0 || value > MAXIMAL_MT_SLOT(evdev)))
   return (EINVAL);
  if (ABS_IS_MT(code) && evdev->ev_mt == ((void*)0) &&
      bit_test(evdev->ev_abs_flags, ABS_MT_SLOT))
   return (EINVAL);
  break;

 case 133:
  if (code >= MSC_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_msc_flags, code))
   return (EINVAL);
  break;

 case 134:
  if (code >= LED_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_led_flags, code))
   return (EINVAL);
  break;

 case 130:
  if (code >= SND_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_snd_flags, code))
   return (EINVAL);
  break;

 case 129:
  if (code >= SW_CNT)
   return (EINVAL);
  if (!bit_test(evdev->ev_sw_flags, code))
   return (EINVAL);
  break;

 case 131:
  if (code >= REP_CNT)
   return (EINVAL);
  break;

 default:
  return (EINVAL);
 }

 return (0);
}
