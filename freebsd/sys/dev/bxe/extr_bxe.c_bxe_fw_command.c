
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int elink_cb_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static uint32_t
bxe_fw_command(struct bxe_softc *sc,
               uint32_t command,
               uint32_t param)
{
    return (elink_cb_fw_command(sc, command, param));
}
