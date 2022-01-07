
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bnxt_softc {int dummy; } ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int _hwrm_send_message (struct bnxt_softc*,void*,int ) ;

__attribute__((used)) static int
hwrm_send_message(struct bnxt_softc *softc, void *msg, uint32_t msg_len)
{
 int rc;

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, msg, msg_len);
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
