
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mac {int m_buflen; int m_string; } ;
struct label {int dummy; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_label; } ;
typedef int mac ;


 int EINVAL ;
 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ifnet*,int ,struct label*) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct ifnet*,int ,struct label*) ;
 int MPC_OBJECT_IFNET ;
 int M_MACTEMP ;
 int M_WAITOK ;
 int PRIV_NET_SETIFMAC ;
 int copyin (int ,struct mac*,int) ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 int ifnet_check_relabel ;
 int ifnet_relabel ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int mac_check_structmac_consistent (struct mac*) ;
 int mac_ifnet_internalize_label (struct label*,char*) ;
 struct label* mac_ifnet_label_alloc () ;
 int mac_ifnet_label_free (struct label*) ;
 int mac_labeled ;
 char* malloc (int ,int ,int ) ;
 int priv_check_cred (struct ucred*,int ) ;

int
mac_ifnet_ioctl_set(struct ucred *cred, struct ifreq *ifr, struct ifnet *ifp)
{
 struct label *intlabel;
 struct mac mac;
 char *buffer;
 int error, locked;

 if (!(mac_labeled & MPC_OBJECT_IFNET))
  return (EINVAL);

 error = copyin(ifr_data_get_ptr(ifr), &mac, sizeof(mac));
 if (error)
  return (error);

 error = mac_check_structmac_consistent(&mac);
 if (error)
  return (error);

 buffer = malloc(mac.m_buflen, M_MACTEMP, M_WAITOK);
 error = copyinstr(mac.m_string, buffer, mac.m_buflen, ((void*)0));
 if (error) {
  free(buffer, M_MACTEMP);
  return (error);
 }

 intlabel = mac_ifnet_label_alloc();
 error = mac_ifnet_internalize_label(intlabel, buffer);
 free(buffer, M_MACTEMP);
 if (error) {
  mac_ifnet_label_free(intlabel);
  return (error);
 }






 error = priv_check_cred(cred, PRIV_NET_SETIFMAC);
 if (error) {
  mac_ifnet_label_free(intlabel);
  return (error);
 }

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_CHECK_NOSLEEP(ifnet_check_relabel, cred, ifp,
     ifp->if_label, intlabel);
 if (error) {
  MAC_IFNET_UNLOCK(ifp, locked);
  mac_ifnet_label_free(intlabel);
  return (error);
 }

 MAC_POLICY_PERFORM_NOSLEEP(ifnet_relabel, cred, ifp, ifp->if_label,
     intlabel);
 MAC_IFNET_UNLOCK(ifp, locked);

 mac_ifnet_label_free(intlabel);
 return (0);
}
