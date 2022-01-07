
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct g_bde_work {scalar_t__ length; int ko; scalar_t__ offset; scalar_t__ data; TYPE_1__* ksp; struct g_bde_softc* softc; } ;
struct g_bde_softc {int sectorsize; } ;
typedef scalar_t__ off_t ;
typedef int keyInstance ;
typedef int cipherInstance ;
struct TYPE_2__ {scalar_t__ data; } ;


 int AES_decrypt (int *,int *,int *,int *,int) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int ,int *) ;
 int DIR_DECRYPT ;
 int G_BDE_SKEYBITS ;
 int G_BDE_SKEYLEN ;
 int bzero (int *,int) ;
 int g_bde_kkey (struct g_bde_softc*,int *,int ,scalar_t__) ;

void
g_bde_crypt_read(struct g_bde_work *wp)
{
 struct g_bde_softc *sc;
 u_char *d;
 u_int n;
 off_t o;
 u_char skey[G_BDE_SKEYLEN];
 keyInstance ki;
 cipherInstance ci;


 AES_init(&ci);
 sc = wp->softc;
 o = 0;
 for (n = 0; o < wp->length; n++, o += sc->sectorsize) {
  d = (u_char *)wp->ksp->data + wp->ko + n * G_BDE_SKEYLEN;
  g_bde_kkey(sc, &ki, DIR_DECRYPT, wp->offset + o);
  AES_decrypt(&ci, &ki, d, skey, sizeof skey);
  d = (u_char *)wp->data + o;
  AES_makekey(&ki, DIR_DECRYPT, G_BDE_SKEYBITS, skey);
  AES_decrypt(&ci, &ki, d, d, sc->sectorsize);
 }
 bzero(skey, sizeof skey);
 bzero(&ci, sizeof ci);
 bzero(&ki, sizeof ki);
}
