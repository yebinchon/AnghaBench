
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mac {int m_string; int m_buflen; } ;
struct label {int dummy; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_label; } ;
typedef int mac ;


 int EINVAL ;
 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MPC_OBJECT_IFNET ;
 int M_MACTEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int copyin (int ,struct mac*,int) ;
 int copyinstr (int ,char*,int ,int *) ;
 int copyout (char*,int ,scalar_t__) ;
 int free (char*,int ) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int mac_check_structmac_consistent (struct mac*) ;
 int mac_ifnet_copy_label (int ,struct label*) ;
 int mac_ifnet_externalize_label (struct label*,char*,char*,int ) ;
 struct label* mac_ifnet_label_alloc () ;
 int mac_ifnet_label_free (struct label*) ;
 int mac_labeled ;
 char* malloc (int ,int ,int) ;
 scalar_t__ strlen (char*) ;

int
mac_ifnet_ioctl_get(struct ucred *cred, struct ifreq *ifr,
    struct ifnet *ifp)
{
 char *elements, *buffer;
 struct label *intlabel;
 struct mac mac;
 int error, locked;

 if (!(mac_labeled & MPC_OBJECT_IFNET))
  return (EINVAL);

 error = copyin(ifr_data_get_ptr(ifr), &mac, sizeof(mac));
 if (error)
  return (error);

 error = mac_check_structmac_consistent(&mac);
 if (error)
  return (error);

 elements = malloc(mac.m_buflen, M_MACTEMP, M_WAITOK);
 error = copyinstr(mac.m_string, elements, mac.m_buflen, ((void*)0));
 if (error) {
  free(elements, M_MACTEMP);
  return (error);
 }

 buffer = malloc(mac.m_buflen, M_MACTEMP, M_WAITOK | M_ZERO);
 intlabel = mac_ifnet_label_alloc();
 MAC_IFNET_LOCK(ifp, locked);
 mac_ifnet_copy_label(ifp->if_label, intlabel);
 MAC_IFNET_UNLOCK(ifp, locked);
 error = mac_ifnet_externalize_label(intlabel, elements, buffer,
     mac.m_buflen);
 mac_ifnet_label_free(intlabel);
 if (error == 0)
  error = copyout(buffer, mac.m_string, strlen(buffer)+1);

 free(buffer, M_MACTEMP);
 free(elements, M_MACTEMP);

 return (error);
}
