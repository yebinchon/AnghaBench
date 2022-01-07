
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_sw_flags; int ev_snd_flags; int ev_led_flags; int ev_msc_flags; int ev_abs_flags; int * ev_absinfo; int ev_rel_flags; int ev_key_flags; } ;


 scalar_t__ ABS_CNT ;
 scalar_t__ ABS_MT_FIRST ;
 int ABS_MT_SLOT ;
 scalar_t__ BTN_MISC ;
 scalar_t__ KEY_CNT ;
 scalar_t__ KEY_OK ;
 scalar_t__ LED_CNT ;
 int MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 int MAX_MT_REPORTS ;
 scalar_t__ MSC_CNT ;
 scalar_t__ MT_CNT ;
 scalar_t__ REL_CNT ;
 scalar_t__ SND_CNT ;
 scalar_t__ SW_CNT ;
 int bit_count (int ,scalar_t__,scalar_t__,int*) ;
 int bit_ffs (int ,scalar_t__,int*) ;
 int bit_ffs_at (int ,scalar_t__,scalar_t__,int*) ;
 scalar_t__ bit_test (int ,int ) ;

__attribute__((used)) static size_t
evdev_estimate_report_size(struct evdev_dev *evdev)
{
 size_t size = 0;
 int res;





 bit_ffs_at(evdev->ev_key_flags, KEY_OK, KEY_CNT - KEY_OK, &res);
 if (res == -1)
  bit_ffs(evdev->ev_key_flags, BTN_MISC, &res);
 size += (res != -1);
 bit_count(evdev->ev_key_flags, BTN_MISC, KEY_OK - BTN_MISC, &res);
 size += res;


 bit_count(evdev->ev_rel_flags, 0, REL_CNT, &res);
 size += res;





 if (evdev->ev_absinfo != ((void*)0)) {
  bit_count(evdev->ev_abs_flags, 0, ABS_CNT, &res);
  size += res;
  bit_count(evdev->ev_abs_flags, ABS_MT_FIRST, MT_CNT, &res);
  if (res > 0) {
   res++;
   if (bit_test(evdev->ev_abs_flags, ABS_MT_SLOT))

    size += res * MAXIMAL_MT_SLOT(evdev);
   else

    size += res * (MAX_MT_REPORTS - 1);
  }
 }


 bit_count(evdev->ev_msc_flags, 0, MSC_CNT, &res);
 size += res;


 bit_count(evdev->ev_led_flags, 0, LED_CNT, &res);
 size += res;


 bit_ffs(evdev->ev_snd_flags, SND_CNT, &res);
 size += (res != -1);

 bit_ffs(evdev->ev_sw_flags, SW_CNT, &res);
 size += (res != -1);



 size++;
 return (size);
}
