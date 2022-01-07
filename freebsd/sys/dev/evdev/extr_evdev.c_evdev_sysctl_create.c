
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct evdev_dev {int ev_unit; int ev_sw_flags; int ev_sysctl_ctx; int ev_snd_flags; int ev_led_flags; int ev_msc_flags; int ev_abs_flags; int ev_rel_flags; int ev_key_flags; int ev_type_flags; int ev_prop_flags; int ev_serial; int ev_shortname; int ev_id; int ev_name; } ;
typedef int ev_unit_str ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE_WITH_LABEL (int *,int ,int ,char*,int ,int *,char*,char*) ;
 int SYSCTL_ADD_OPAQUE (int *,int ,int ,char*,int ,int ,int,char*,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_ADD_STRUCT (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _kern_evdev_input ;
 int input_id ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static void
evdev_sysctl_create(struct evdev_dev *evdev)
{
 struct sysctl_oid *ev_sysctl_tree;
 char ev_unit_str[8];

 snprintf(ev_unit_str, sizeof(ev_unit_str), "%d", evdev->ev_unit);
 sysctl_ctx_init(&evdev->ev_sysctl_ctx);

 ev_sysctl_tree = SYSCTL_ADD_NODE_WITH_LABEL(&evdev->ev_sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_kern_evdev_input), OID_AUTO,
     ev_unit_str, CTLFLAG_RD, ((void*)0), "", "device index");

 SYSCTL_ADD_STRING(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "name", CTLFLAG_RD,
     evdev->ev_name, 0,
     "Input device name");

 SYSCTL_ADD_STRUCT(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "id", CTLFLAG_RD,
     &evdev->ev_id, input_id,
     "Input device identification");


 SYSCTL_ADD_STRING(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "phys", CTLFLAG_RD,
     evdev->ev_shortname, 0,
     "Input device short name");


 SYSCTL_ADD_STRING(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "uniq", CTLFLAG_RD,
     evdev->ev_serial, 0,
     "Input device unique number");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "props", CTLFLAG_RD,
     evdev->ev_prop_flags, sizeof(evdev->ev_prop_flags), "",
     "Input device properties");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "type_bits", CTLFLAG_RD,
     evdev->ev_type_flags, sizeof(evdev->ev_type_flags), "",
     "Input device supported events types");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "key_bits", CTLFLAG_RD,
     evdev->ev_key_flags, sizeof(evdev->ev_key_flags),
     "", "Input device supported keys");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "rel_bits", CTLFLAG_RD,
     evdev->ev_rel_flags, sizeof(evdev->ev_rel_flags), "",
     "Input device supported relative events");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "abs_bits", CTLFLAG_RD,
     evdev->ev_abs_flags, sizeof(evdev->ev_abs_flags), "",
     "Input device supported absolute events");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "msc_bits", CTLFLAG_RD,
     evdev->ev_msc_flags, sizeof(evdev->ev_msc_flags), "",
     "Input device supported miscellaneous events");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "led_bits", CTLFLAG_RD,
     evdev->ev_led_flags, sizeof(evdev->ev_led_flags), "",
     "Input device supported LED events");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "snd_bits", CTLFLAG_RD,
     evdev->ev_snd_flags, sizeof(evdev->ev_snd_flags), "",
     "Input device supported sound events");

 SYSCTL_ADD_OPAQUE(&evdev->ev_sysctl_ctx,
     SYSCTL_CHILDREN(ev_sysctl_tree), OID_AUTO, "sw_bits", CTLFLAG_RD,
     evdev->ev_sw_flags, sizeof(evdev->ev_sw_flags), "",
     "Input device supported switch events");
}
