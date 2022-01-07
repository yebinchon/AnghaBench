
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_sidr_rep_event_resp {int qpn; int qkey; int status; } ;
struct ib_cm_sidr_rep_event_param {int qpn; int qkey; int status; } ;



__attribute__((used)) static void ib_ucm_event_sidr_rep_get(struct ib_ucm_sidr_rep_event_resp *urep,
          struct ib_cm_sidr_rep_event_param *krep)
{
 urep->status = krep->status;
 urep->qkey = krep->qkey;
 urep->qpn = krep->qpn;
}
