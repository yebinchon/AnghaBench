
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct octeon_intrmod_cfg {int dummy; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct octeon_device {TYPE_1__ props; } ;
struct lio_soft_command {scalar_t__ virtrptr; } ;
struct lio_intrmod_resp {int intrmod; } ;
struct lio {int intrmod_cfg; } ;
struct ifnet {int dummy; } ;


 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_free_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int lio_swap_8B_data (int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
lio_get_intrmod_callback(struct octeon_device *oct_dev, uint32_t status,
    void *ptr)
{
 struct lio_soft_command *sc = (struct lio_soft_command *)ptr;
 struct ifnet *ifp = oct_dev->props.ifp;
 struct lio *lio = if_getsoftc(ifp);
 struct lio_intrmod_resp *resp;

 if (status) {
  lio_dev_err(oct_dev, "Failed to get intrmod\n");
 } else {
  resp = (struct lio_intrmod_resp *)sc->virtrptr;
  lio_swap_8B_data((uint64_t *)&resp->intrmod,
     (sizeof(struct octeon_intrmod_cfg)) / 8);
  memcpy(&lio->intrmod_cfg, &resp->intrmod,
         sizeof(struct octeon_intrmod_cfg));
 }

 lio_free_soft_command(oct_dev, sc);
}
