
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct g_bde_work {scalar_t__ length; TYPE_1__* sp; struct g_bde_softc* softc; } ;
struct g_bde_softc {scalar_t__ sectorsize; } ;
typedef scalar_t__ off_t ;
typedef int keyInstance ;
typedef int cipherInstance ;
struct TYPE_2__ {scalar_t__* data; } ;


 int AES_encrypt (int *,int *,scalar_t__*,scalar_t__*,int) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int ,scalar_t__*) ;
 int DIR_ENCRYPT ;
 int G_BDE_SKEYBITS ;
 int G_BDE_SKEYLEN ;
 int arc4rand (scalar_t__*,int,int) ;

void
g_bde_crypt_delete(struct g_bde_work *wp)
{
 struct g_bde_softc *sc;
 u_char *d;
 off_t o;
 u_char skey[G_BDE_SKEYLEN];
 keyInstance ki;
 cipherInstance ci;

 sc = wp->softc;
 d = wp->sp->data;
 AES_init(&ci);






 for (o = 0; o < wp->length; o += sc->sectorsize) {
  arc4rand(d, sc->sectorsize, 0);
  arc4rand(skey, sizeof skey, 0);
  AES_makekey(&ki, DIR_ENCRYPT, G_BDE_SKEYBITS, skey);
  AES_encrypt(&ci, &ki, d, d, sc->sectorsize);
  d += sc->sectorsize;
 }





 arc4rand(&o, sizeof o, 1);
}
