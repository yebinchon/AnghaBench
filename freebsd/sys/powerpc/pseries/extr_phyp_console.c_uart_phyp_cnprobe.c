
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_phyp_softc {int node; int sc_mtx; } ;
struct consdev {int cn_pri; } ;
typedef int stdout ;
typedef int phandle_t ;
typedef scalar_t__ ihandle_t ;
typedef int buf ;


 int CN_DEAD ;
 int CN_NORMAL ;
 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int MTX_SPIN ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,scalar_t__*,int) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_instance_to_package (scalar_t__) ;
 struct uart_phyp_softc* console_sc ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ uart_phyp_probe_node (struct uart_phyp_softc*) ;

__attribute__((used)) static void
uart_phyp_cnprobe(struct consdev *cp)
{
 char buf[64];
 ihandle_t stdout;
 phandle_t input, chosen;
 static struct uart_phyp_softc sc;

 if ((chosen = OF_finddevice("/chosen")) == -1)
  goto fail;


 input = -1;
 if (OF_getencprop(chosen, "stdout", &stdout,
     sizeof(stdout)) == sizeof(stdout) && stdout != 0)
  input = OF_instance_to_package(stdout);
 if (input == -1)
  goto fail;

 if (OF_getprop(input, "device_type", buf, sizeof(buf)) == -1)
  goto fail;
 if (strcmp(buf, "serial") != 0)
  goto fail;

 sc.node = input;
 if (uart_phyp_probe_node(&sc) != 0)
  goto fail;
 mtx_init(&sc.sc_mtx, "uart_phyp", ((void*)0), MTX_SPIN | MTX_QUIET |
     MTX_NOWITNESS);

 cp->cn_pri = CN_NORMAL;
 console_sc = &sc;
 return;

fail:
 cp->cn_pri = CN_DEAD;
 return;
}
