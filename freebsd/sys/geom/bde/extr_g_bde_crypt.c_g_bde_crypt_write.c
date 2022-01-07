
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct g_bde_work {scalar_t__ length; int ko; scalar_t__ offset; TYPE_2__* ksp; TYPE_1__* sp; scalar_t__ data; struct g_bde_softc* softc; } ;
struct g_bde_softc {scalar_t__ sectorsize; } ;
typedef scalar_t__ off_t ;
typedef int keyInstance ;
typedef int cipherInstance ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int AES_encrypt (int *,int *,int *,int *,int) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int ,int *) ;
 int DIR_ENCRYPT ;
 int G_BDE_SKEYBITS ;
 int G_BDE_SKEYLEN ;
 int arc4rand (int *,int,int ) ;
 int bzero (int *,int) ;
 int g_bde_kkey (struct g_bde_softc*,int *,int ,scalar_t__) ;

void
g_bde_crypt_write(struct g_bde_work *wp)
{
 u_char *s, *d;
 struct g_bde_softc *sc;
 u_int n;
 off_t o;
 u_char skey[G_BDE_SKEYLEN];
 keyInstance ki;
 cipherInstance ci;

 sc = wp->softc;
 AES_init(&ci);
 o = 0;
 for (n = 0; o < wp->length; n++, o += sc->sectorsize) {

  s = (u_char *)wp->data + o;
  d = (u_char *)wp->sp->data + o;
  arc4rand(skey, sizeof skey, 0);
  AES_makekey(&ki, DIR_ENCRYPT, G_BDE_SKEYBITS, skey);
  AES_encrypt(&ci, &ki, s, d, sc->sectorsize);

  d = (u_char *)wp->ksp->data + wp->ko + n * G_BDE_SKEYLEN;
  g_bde_kkey(sc, &ki, DIR_ENCRYPT, wp->offset + o);
  AES_encrypt(&ci, &ki, skey, d, sizeof skey);
  bzero(skey, sizeof skey);
 }
 bzero(skey, sizeof skey);
 bzero(&ci, sizeof ci);
 bzero(&ki, sizeof ki);
}
