
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pduq_t ;
struct TYPE_4__ {int isc; } ;
typedef TYPE_1__ isc_session_t ;


 int debug_called (int) ;
 int iscsi_async (TYPE_1__*,int *) ;
 int pdu_free (int ,int *) ;

__attribute__((used)) static void
_async(isc_session_t *sp, pduq_t *pq)
{
     debug_called(8);

     iscsi_async(sp, pq);

     pdu_free(sp->isc, pq);
}
