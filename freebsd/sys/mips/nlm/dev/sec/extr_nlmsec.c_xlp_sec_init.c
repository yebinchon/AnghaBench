
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_sec_softc {int sec_vc_end; int sec_vc_start; } ;


 int nlm_xlpsec_msgring_handler ;
 int printf (char*) ;
 scalar_t__ register_msgring_handler (int ,int ,int ,struct xlp_sec_softc*) ;

__attribute__((used)) static int
xlp_sec_init(struct xlp_sec_softc *sc)
{


 if (register_msgring_handler(sc->sec_vc_start,
     sc->sec_vc_end, nlm_xlpsec_msgring_handler, sc) != 0) {
  printf("Couldn't register sec msgring handler\n");
  return (-1);
 }




 return (0);
}
