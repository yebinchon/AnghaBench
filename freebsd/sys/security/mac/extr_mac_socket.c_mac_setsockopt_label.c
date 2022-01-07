
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int dummy; } ;
struct mac {int m_buflen; int m_string; } ;
struct label {int dummy; } ;


 int EINVAL ;
 int MPC_OBJECT_SOCKET ;
 int M_MACTEMP ;
 int M_WAITOK ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 int mac_check_structmac_consistent (struct mac*) ;
 int mac_labeled ;
 int mac_socket_internalize_label (struct label*,char*) ;
 struct label* mac_socket_label_alloc (int ) ;
 int mac_socket_label_free (struct label*) ;
 int mac_socket_label_set (struct ucred*,struct socket*,struct label*) ;
 char* malloc (int ,int ,int ) ;

int
mac_setsockopt_label(struct ucred *cred, struct socket *so, struct mac *mac)
{
 struct label *intlabel;
 char *buffer;
 int error;

 if (!(mac_labeled & MPC_OBJECT_SOCKET))
  return (EINVAL);

 error = mac_check_structmac_consistent(mac);
 if (error)
  return (error);

 buffer = malloc(mac->m_buflen, M_MACTEMP, M_WAITOK);
 error = copyinstr(mac->m_string, buffer, mac->m_buflen, ((void*)0));
 if (error) {
  free(buffer, M_MACTEMP);
  return (error);
 }

 intlabel = mac_socket_label_alloc(M_WAITOK);
 error = mac_socket_internalize_label(intlabel, buffer);
 free(buffer, M_MACTEMP);
 if (error)
  goto out;

 error = mac_socket_label_set(cred, so, intlabel);
out:
 mac_socket_label_free(intlabel);
 return (error);
}
