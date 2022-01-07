
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cookie; int slowpath_cb; scalar_t__ tx_release_cb; scalar_t__ tx_comp_cb; scalar_t__ rx_release_cb; scalar_t__ rx_comp_cb; } ;
struct ecore_ll2_info {TYPE_1__ cbs; } ;
struct ecore_ll2_cbs {scalar_t__ cookie; int slowpath_cb; scalar_t__ tx_release_cb; scalar_t__ tx_comp_cb; scalar_t__ rx_release_cb; scalar_t__ rx_comp_cb; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_INVAL ;
 int ECORE_SUCCESS ;

__attribute__((used)) static enum _ecore_status_t
ecore_ll2_set_cbs(struct ecore_ll2_info *p_ll2_info,
      const struct ecore_ll2_cbs *cbs)
{
 if (!cbs || (!cbs->rx_comp_cb ||
       !cbs->rx_release_cb ||
       !cbs->tx_comp_cb ||
       !cbs->tx_release_cb ||
       !cbs->cookie))
  return ECORE_INVAL;

 p_ll2_info->cbs.rx_comp_cb = cbs->rx_comp_cb;
 p_ll2_info->cbs.rx_release_cb = cbs->rx_release_cb;
 p_ll2_info->cbs.tx_comp_cb = cbs->tx_comp_cb;
 p_ll2_info->cbs.tx_release_cb = cbs->tx_release_cb;
 p_ll2_info->cbs.slowpath_cb = cbs->slowpath_cb;
 p_ll2_info->cbs.cookie = cbs->cookie;

 return ECORE_SUCCESS;
}
