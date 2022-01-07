
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufm_softc {int dummy; } ;


 int EIO ;
 int UFM_CMD0 ;
 int UFM_CMD2 ;
 scalar_t__ ufm_do_req (struct ufm_softc*,int ,int,int,int *) ;

__attribute__((used)) static int
ufm_stop(struct ufm_softc *sc, void *addr)
{
 if (ufm_do_req(sc, UFM_CMD0,
     0x16, 0x1C, ((void*)0))) {
  return (EIO);
 }
 if (ufm_do_req(sc, UFM_CMD2,
     0x00, 0x00, ((void*)0))) {
  return (EIO);
 }
 return (0);
}
