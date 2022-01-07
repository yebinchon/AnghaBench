
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int m_buflen; } ;


 int EINVAL ;
 int MAC_MAX_LABEL_BUF_LEN ;

int
mac_check_structmac_consistent(struct mac *mac)
{


 if (mac->m_buflen > MAC_MAX_LABEL_BUF_LEN ||
     mac->m_buflen <= sizeof(""))
  return (EINVAL);

 return (0);
}
