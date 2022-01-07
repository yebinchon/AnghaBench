
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_devinst {int pi_slot; int pi_func; } ;
typedef int nstr ;
typedef int MD5_CTX ;


 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,unsigned int) ;
 int snprintf (char*,int,char*,int,int,char*) ;
 scalar_t__ strlen (char*) ;
 char* vmname ;

void
net_genmac(struct pci_devinst *pi, uint8_t *macaddr)
{




 MD5_CTX mdctx;
 unsigned char digest[16];
 char nstr[80];

 snprintf(nstr, sizeof(nstr), "%d-%d-%s", pi->pi_slot,
     pi->pi_func, vmname);

 MD5Init(&mdctx);
 MD5Update(&mdctx, nstr, (unsigned int)strlen(nstr));
 MD5Final(digest, &mdctx);

 macaddr[0] = 0x00;
 macaddr[1] = 0xa0;
 macaddr[2] = 0x98;
 macaddr[3] = digest[0];
 macaddr[4] = digest[1];
 macaddr[5] = digest[2];
}
