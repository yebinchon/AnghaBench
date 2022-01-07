
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int snap_len; int min_len; int skip_ofst; int* data; int* mask; int skip_len; scalar_t__ invert; } ;
struct t4_tracer {int idx; TYPE_1__ tp; scalar_t__ enabled; } ;


 int CHELSIO_T4_GET_TRACER ;
 int T4_TRACE_LEN ;
 int doit (int ,struct t4_tracer*) ;
 int printf (char*,...) ;
 int read_reg (int,int,long long*) ;

__attribute__((used)) static int
show_tracers(void)
{
 struct t4_tracer t;
 char *s;
 int rc, port_idx, i;
 long long val;


 rc = read_reg(0x9800, 4, &val);
 if (rc != 0)
  return (rc);
 printf("tracing is %s\n", val & 2 ? "ENABLED" : "DISABLED");

 t.idx = 0;
 for (t.idx = 0; ; t.idx++) {
  rc = doit(CHELSIO_T4_GET_TRACER, &t);
  if (rc != 0 || t.idx == 0xff)
   break;

  if (t.tp.port < 4) {
   s = "Rx";
   port_idx = t.tp.port;
  } else if (t.tp.port < 8) {
   s = "Tx";
   port_idx = t.tp.port - 4;
  } else if (t.tp.port < 12) {
   s = "loopback";
   port_idx = t.tp.port - 8;
  } else if (t.tp.port < 16) {
   s = "MPS Rx";
   port_idx = t.tp.port - 12;
  } else if (t.tp.port < 20) {
   s = "MPS Tx";
   port_idx = t.tp.port - 16;
  } else {
   s = "unknown";
   port_idx = t.tp.port;
  }

  printf("\ntracer %u (currently %s) captures ", t.idx,
      t.enabled ? "ENABLED" : "DISABLED");
  if (t.tp.port < 8)
   printf("port %u %s, ", port_idx, s);
  else
   printf("%s %u, ", s, port_idx);
  printf("snap length: %u, min length: %u\n", t.tp.snap_len,
      t.tp.min_len);
  printf("packets captured %smatch filter\n",
      t.tp.invert ? "do not " : "");
  if (t.tp.skip_ofst) {
   printf("filter pattern: ");
   for (i = 0; i < t.tp.skip_ofst * 2; i += 2)
    printf("%08x%08x", t.tp.data[i],
        t.tp.data[i + 1]);
   printf("/");
   for (i = 0; i < t.tp.skip_ofst * 2; i += 2)
    printf("%08x%08x", t.tp.mask[i],
        t.tp.mask[i + 1]);
   printf("@0\n");
  }
  printf("filter pattern: ");
  for (i = t.tp.skip_ofst * 2; i < T4_TRACE_LEN / 4; i += 2)
   printf("%08x%08x", t.tp.data[i], t.tp.data[i + 1]);
  printf("/");
  for (i = t.tp.skip_ofst * 2; i < T4_TRACE_LEN / 4; i += 2)
   printf("%08x%08x", t.tp.mask[i], t.tp.mask[i + 1]);
  printf("@%u\n", (t.tp.skip_ofst + t.tp.skip_len) * 8);
 }

 return (rc);
}
