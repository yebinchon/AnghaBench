
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smbios_entry_point {int eplen; int major; int minor; int bcdrev; int staddr; int ianchor; scalar_t__ revision; int eanchor; } ;


 int SMBIOS_ENTRY_EANCHOR ;
 int SMBIOS_ENTRY_EANCHORLEN ;
 int SMBIOS_ENTRY_IANCHOR ;
 int SMBIOS_ENTRY_IANCHORLEN ;
 int assert (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct smbios_entry_point*,int ,int) ;

__attribute__((used)) static void
smbios_ep_initializer(struct smbios_entry_point *smbios_ep, uint32_t staddr)
{
 memset(smbios_ep, 0, sizeof(*smbios_ep));
 memcpy(smbios_ep->eanchor, SMBIOS_ENTRY_EANCHOR,
     SMBIOS_ENTRY_EANCHORLEN);
 smbios_ep->eplen = 0x1F;
 assert(sizeof (struct smbios_entry_point) == smbios_ep->eplen);
 smbios_ep->major = 2;
 smbios_ep->minor = 6;
 smbios_ep->revision = 0;
 memcpy(smbios_ep->ianchor, SMBIOS_ENTRY_IANCHOR,
     SMBIOS_ENTRY_IANCHORLEN);
 smbios_ep->staddr = staddr;
 smbios_ep->bcdrev = 0x24;
}
