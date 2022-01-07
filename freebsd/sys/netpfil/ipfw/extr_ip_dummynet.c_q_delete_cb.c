
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNHT_SCAN_DEL ;
 int DN_DESTROY ;
 int dn_delete_queue (void*,int) ;

__attribute__((used)) static int
q_delete_cb(void *q, void *arg)
{
 int flags = (int)(uintptr_t)arg;
 dn_delete_queue(q, flags);
 return (flags & DN_DESTROY) ? DNHT_SCAN_DEL : 0;
}
