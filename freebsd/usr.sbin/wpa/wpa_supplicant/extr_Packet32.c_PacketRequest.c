
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ifreq {int ifr_name; void* ifr_data; } ;
struct adapter {int socket; int name; } ;
typedef int ifr ;
typedef void* caddr_t ;
struct TYPE_9__ {int KeyLength; int KeyMaterial; int BSSID; int KeyIndex; int KeyRSC; } ;
struct TYPE_8__ {int Length; int KeyLength; char* BSSID; int KeyIndex; int KeyRSC; } ;
struct TYPE_7__ {scalar_t__ Oid; int Length; int Data; } ;
typedef TYPE_1__ PACKET_OID_DATA ;
typedef int NDIS_802_11_MAC_ADDRESS ;
typedef TYPE_2__ NDIS_802_11_KEY_COMPAT ;
typedef TYPE_3__ NDIS_802_11_KEY ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ OID_802_11_ADD_KEY ;
 int SIOCGDRVSPEC ;
 int SIOCSDRVSPEC ;
 scalar_t__ TRUE ;
 int bcopy (int ,char*,int) ;
 int bzero (char*,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 TYPE_1__* malloc (int) ;
 int strlcpy (int ,int ,int) ;

int
PacketRequest(void *iface, BOOLEAN set, PACKET_OID_DATA *oid)
{
 struct adapter *a;
 uint32_t retval;
 struct ifreq ifr;
 NDIS_802_11_KEY *old;
 NDIS_802_11_KEY_COMPAT *new;
 PACKET_OID_DATA *o = ((void*)0);

 if (iface == ((void*)0))
  return(-1);

 a = iface;
 bzero((char *)&ifr, sizeof(ifr));
 if (set == TRUE && oid->Oid == OID_802_11_ADD_KEY) {
  old = (NDIS_802_11_KEY *)&oid->Data;
  o = malloc(sizeof(PACKET_OID_DATA) +
      sizeof(NDIS_802_11_KEY_COMPAT) + old->KeyLength);
  if (o == ((void*)0))
   return(0);
  bzero((char *)o, sizeof(PACKET_OID_DATA) +
      sizeof(NDIS_802_11_KEY_COMPAT) + old->KeyLength);
  o->Oid = oid->Oid;
  o->Length = sizeof(NDIS_802_11_KEY_COMPAT) + old->KeyLength;
  new = (NDIS_802_11_KEY_COMPAT *)&o->Data;
  new->KeyRSC = old->KeyRSC;
  new->Length = o->Length;
  new->KeyIndex = old->KeyIndex;
  new->KeyLength = old->KeyLength;
  bcopy(old->BSSID, new->BSSID, sizeof(NDIS_802_11_MAC_ADDRESS));
  bcopy(old->KeyMaterial, (char *)new +
      sizeof(NDIS_802_11_KEY_COMPAT), new->KeyLength);
         ifr.ifr_data = (caddr_t)o;
 } else
         ifr.ifr_data = (caddr_t)oid;

        strlcpy(ifr.ifr_name, a->name, sizeof(ifr.ifr_name));

 if (set == TRUE)
  retval = ioctl(a->socket, SIOCSDRVSPEC, &ifr);
 else
  retval = ioctl(a->socket, SIOCGDRVSPEC, &ifr);

 if (o != ((void*)0))
  free(o);

 if (retval)
  return(0);

 return(1);
}
