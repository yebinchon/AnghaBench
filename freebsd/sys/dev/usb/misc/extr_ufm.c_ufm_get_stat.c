
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ufm_softc {int dummy; } ;


 int EIO ;
 int UFM_CMD0 ;
 int hz ;
 scalar_t__ ufm_do_req (struct ufm_softc*,int ,int,int,int*) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static int
ufm_get_stat(struct ufm_softc *sc, void *addr)
{
 uint8_t ret;





 usb_pause_mtx(((void*)0), hz / 4);

 if (ufm_do_req(sc, UFM_CMD0,
     0x00, 0x24, &ret)) {
  return (EIO);
 }
 *(int *)addr = ret;

 return (0);
}
