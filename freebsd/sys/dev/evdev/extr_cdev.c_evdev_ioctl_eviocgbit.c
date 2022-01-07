
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {unsigned long* ev_type_flags; unsigned long* ev_key_flags; unsigned long* ev_rel_flags; unsigned long* ev_abs_flags; unsigned long* ev_msc_flags; unsigned long* ev_led_flags; unsigned long* ev_snd_flags; unsigned long* ev_sw_flags; } ;
typedef int caddr_t ;


 int ABS_CNT ;
 int ENOTTY ;

 int EV_CNT ;







 int KEY_CNT ;
 int LED_CNT ;
 int MIN (int,int) ;
 int MSC_CNT ;
 int REL_CNT ;
 int SND_CNT ;
 int SW_CNT ;
 int bitstr_size (int) ;
 int bzero (int ,int) ;
 int memcpy (int ,unsigned long*,int) ;

__attribute__((used)) static int
evdev_ioctl_eviocgbit(struct evdev_dev *evdev, int type, int len, caddr_t data)
{
 unsigned long *bitmap;
 int limit;

 switch (type) {
 case 0:
  bitmap = evdev->ev_type_flags;
  limit = EV_CNT;
  break;
 case 133:
  bitmap = evdev->ev_key_flags;
  limit = KEY_CNT;
  break;
 case 130:
  bitmap = evdev->ev_rel_flags;
  limit = REL_CNT;
  break;
 case 135:
  bitmap = evdev->ev_abs_flags;
  limit = ABS_CNT;
  break;
 case 131:
  bitmap = evdev->ev_msc_flags;
  limit = MSC_CNT;
  break;
 case 132:
  bitmap = evdev->ev_led_flags;
  limit = LED_CNT;
  break;
 case 129:
  bitmap = evdev->ev_snd_flags;
  limit = SND_CNT;
  break;
 case 128:
  bitmap = evdev->ev_sw_flags;
  limit = SW_CNT;
  break;
 case 134:




  bzero(data, len);
  return (0);
 default:
  return (ENOTTY);
 }





 bzero(data, len);

 limit = bitstr_size(limit);
 len = MIN(limit, len);
 memcpy(data, bitmap, len);
 return (0);
}
