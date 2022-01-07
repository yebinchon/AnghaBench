
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int remote_addr; int m_remote_addr; int local_addr; int m_local_addr; } ;



__attribute__((used)) static int iw_cm_map(struct iw_cm_id *cm_id, bool active)
{
 cm_id->m_local_addr = cm_id->local_addr;
 cm_id->m_remote_addr = cm_id->remote_addr;

 return 0;
}
