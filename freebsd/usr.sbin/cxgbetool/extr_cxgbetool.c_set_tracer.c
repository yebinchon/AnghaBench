
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int t ;
struct TYPE_2__ {int snap_len; int port; scalar_t__ invert; scalar_t__ skip_len; scalar_t__ skip_ofst; scalar_t__ min_len; } ;
struct t4_tracer {int enabled; int valid; TYPE_1__ tp; int idx; } ;


 int CHELSIO_T4_SET_TRACER ;
 int EINVAL ;
 int bzero (struct t4_tracer*,int) ;
 int create_tracing_ifnet () ;
 int doit (int ,struct t4_tracer*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
set_tracer(uint8_t idx, int argc, const char *argv[])
{
 struct t4_tracer t;
 int len, port;

 bzero(&t, sizeof (t));
 t.idx = idx;
 t.enabled = 1;
 t.valid = 1;

 if (argc != 1) {
  warnx("must specify tx<n> or rx<n>.");
  return (EINVAL);
 }

 len = strlen(argv[0]);
 if (len != 3) {
  warnx("argument must be 3 characters (tx<n> or rx<n>)");
  return (EINVAL);
 }

 if (strncmp(argv[0], "tx", 2) == 0) {
  port = argv[0][2] - '0';
  if (port < 0 || port > 3) {
   warnx("'%c' in %s is invalid", argv[0][2], argv[0]);
   return (EINVAL);
  }
  port += 4;
 } else if (strncmp(argv[0], "rx", 2) == 0) {
  port = argv[0][2] - '0';
  if (port < 0 || port > 3) {
   warnx("'%c' in %s is invalid", argv[0][2], argv[0]);
   return (EINVAL);
  }
 } else {
  warnx("argument '%s' isn't tx<n> or rx<n>", argv[0]);
  return (EINVAL);
 }

 t.tp.snap_len = 128;
 t.tp.min_len = 0;
 t.tp.skip_ofst = 0;
 t.tp.skip_len = 0;
 t.tp.invert = 0;
 t.tp.port = port;

 create_tracing_ifnet();
 return doit(CHELSIO_T4_SET_TRACER, &t);
}
