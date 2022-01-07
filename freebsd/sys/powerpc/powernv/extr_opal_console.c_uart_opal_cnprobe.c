
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_opal_softc {int node; int sc_mtx; } ;
struct consdev {int cn_pri; struct uart_opal_softc* cn_arg; } ;
typedef int phandle_t ;
typedef int buf ;


 int CN_DEAD ;
 int CN_NORMAL ;
 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int MTX_SPIN ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char*,char*,int) ;
 struct uart_opal_softc* console_sc ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ opal_check () ;
 struct consdev* stdout_cp ;
 scalar_t__ uart_opal_probe_node (struct uart_opal_softc*) ;

__attribute__((used)) static void
uart_opal_cnprobe(struct consdev *cp)
{
 char buf[64];
 phandle_t input, chosen;
 static struct uart_opal_softc sc;

 if (opal_check() != 0)
  goto fail;

 if ((chosen = OF_finddevice("/chosen")) == -1)
  goto fail;


 if (OF_getprop(chosen, "linux,stdout-path", buf, sizeof(buf)) <= 0)
  goto fail;

 input = OF_finddevice(buf);
 if (input == -1)
  goto fail;

 sc.node = input;
 if (uart_opal_probe_node(&sc) != 0)
  goto fail;
 mtx_init(&sc.sc_mtx, "uart_opal", ((void*)0), MTX_SPIN | MTX_QUIET |
     MTX_NOWITNESS);

 cp->cn_pri = CN_NORMAL;
 console_sc = &sc;
 cp->cn_arg = console_sc;
 stdout_cp = cp;
 return;

fail:
 cp->cn_pri = CN_DEAD;
 return;
}
