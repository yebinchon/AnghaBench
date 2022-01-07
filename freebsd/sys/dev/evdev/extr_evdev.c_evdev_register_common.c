
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int* ev_rep; scalar_t__ ev_report_size; int * ev_absinfo; int ev_abs_flags; int ev_mtx; int ev_rep_callout; int ev_flags; int ev_clients; int ev_serial; int ev_name; int ev_shortname; } ;


 int ABS_MT_SLOT ;
 int EVDEV_FLAG_SOFTREPEAT ;
 int EV_REP ;
 int LIST_INIT (int *) ;
 scalar_t__ MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 scalar_t__ bit_test (int ,int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int debugf (struct evdev_dev*,char*,int ,int ,int ) ;
 int evdev_cdev_create (struct evdev_dev*) ;
 int evdev_estimate_report_size (struct evdev_dev*) ;
 scalar_t__ evdev_event_supported (struct evdev_dev*,int ) ;
 int evdev_mt_init (struct evdev_dev*) ;
 int evdev_set_report_size (struct evdev_dev*,int ) ;
 int evdev_sysctl_create (struct evdev_dev*) ;

__attribute__((used)) static int
evdev_register_common(struct evdev_dev *evdev)
{
 int ret;

 debugf(evdev, "%s: registered evdev provider: %s <%s>\n",
     evdev->ev_shortname, evdev->ev_name, evdev->ev_serial);


 LIST_INIT(&evdev->ev_clients);

 if (evdev_event_supported(evdev, EV_REP) &&
     bit_test(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT)) {

  callout_init_mtx(&evdev->ev_rep_callout, &evdev->ev_mtx, 0);

  if (evdev->ev_rep[REP_DELAY] == 0 &&
      evdev->ev_rep[REP_PERIOD] == 0) {

   evdev->ev_rep[REP_DELAY] = 250;
   evdev->ev_rep[REP_PERIOD] = 33;
  }
 }


 if (bit_test(evdev->ev_abs_flags, ABS_MT_SLOT) &&
     evdev->ev_absinfo != ((void*)0) && MAXIMAL_MT_SLOT(evdev) > 0)
  evdev_mt_init(evdev);


 if (evdev->ev_report_size == 0) {
  ret = evdev_set_report_size(evdev,
      evdev_estimate_report_size(evdev));
  if (ret != 0)
   goto bail_out;
 }


 ret = evdev_cdev_create(evdev);
 if (ret != 0)
  goto bail_out;


 evdev_sysctl_create(evdev);

bail_out:
 return (ret);
}
