
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct saf1761_otg_softc {int dummy; } ;


 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,scalar_t__) ;
 int SOTG_CTRL_FUNC ;
 scalar_t__ SOTG_CTRL_FUNC_CLBUF ;
 int SOTG_EP_INDEX ;
 scalar_t__ SOTG_EP_INDEX_DIR_IN ;
 scalar_t__ SOTG_EP_INDEX_DIR_OUT ;
 scalar_t__ SOTG_EP_INDEX_ENDP_INDEX_SHIFT ;
 int SOTG_EP_TYPE ;
 scalar_t__ SOTG_EP_TYPE_ENABLE ;
 scalar_t__ UE_CONTROL ;
 scalar_t__ UE_DIR_IN ;

__attribute__((used)) static void
saf1761_otg_clear_stall_sub_locked(struct saf1761_otg_softc *sc,
    uint8_t ep_no, uint8_t ep_type, uint8_t ep_dir)
{
 if (ep_type == UE_CONTROL) {

  return;
 }

 SAF1761_WRITE_LE_4(sc, SOTG_EP_INDEX,
     (ep_no << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
     ((ep_dir == UE_DIR_IN) ? SOTG_EP_INDEX_DIR_IN :
     SOTG_EP_INDEX_DIR_OUT));


 SAF1761_WRITE_LE_4(sc, SOTG_EP_TYPE, 0);

 SAF1761_WRITE_LE_4(sc, SOTG_EP_TYPE, ep_type | SOTG_EP_TYPE_ENABLE);


 SAF1761_WRITE_LE_4(sc, SOTG_CTRL_FUNC, SOTG_CTRL_FUNC_CLBUF);

 SAF1761_WRITE_LE_4(sc, SOTG_CTRL_FUNC, 0);
}
