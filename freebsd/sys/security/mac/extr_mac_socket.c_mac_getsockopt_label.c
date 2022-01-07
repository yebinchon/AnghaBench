
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;
struct mac {int m_string; int m_buflen; } ;
struct label {int dummy; } ;


 int EINVAL ;
 int MPC_OBJECT_SOCKET ;
 int M_MACTEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int copyinstr (int ,char*,int ,int *) ;
 int copyout (char*,int ,scalar_t__) ;
 int free (char*,int ) ;
 int mac_check_structmac_consistent (struct mac*) ;
 int mac_labeled ;
 int mac_socket_copy_label (int ,struct label*) ;
 int mac_socket_externalize_label (struct label*,char*,char*,int ) ;
 struct label* mac_socket_label_alloc (int) ;
 int mac_socket_label_free (struct label*) ;
 char* malloc (int ,int ,int) ;
 scalar_t__ strlen (char*) ;

int
mac_getsockopt_label(struct ucred *cred, struct socket *so, struct mac *mac)
{
 char *buffer, *elements;
 struct label *intlabel;
 int error;

 if (!(mac_labeled & MPC_OBJECT_SOCKET))
  return (EINVAL);

 error = mac_check_structmac_consistent(mac);
 if (error)
  return (error);

 elements = malloc(mac->m_buflen, M_MACTEMP, M_WAITOK);
 error = copyinstr(mac->m_string, elements, mac->m_buflen, ((void*)0));
 if (error) {
  free(elements, M_MACTEMP);
  return (error);
 }

 buffer = malloc(mac->m_buflen, M_MACTEMP, M_WAITOK | M_ZERO);
 intlabel = mac_socket_label_alloc(M_WAITOK);
 SOCK_LOCK(so);
 mac_socket_copy_label(so->so_label, intlabel);
 SOCK_UNLOCK(so);
 error = mac_socket_externalize_label(intlabel, elements, buffer,
     mac->m_buflen);
 mac_socket_label_free(intlabel);
 if (error == 0)
  error = copyout(buffer, mac->m_string, strlen(buffer)+1);

 free(buffer, M_MACTEMP);
 free(elements, M_MACTEMP);

 return (error);
}
