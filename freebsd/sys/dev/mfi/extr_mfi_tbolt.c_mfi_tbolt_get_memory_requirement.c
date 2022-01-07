
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int raid_io_msg_size; int mfi_max_fw_cmds; int reply_size; } ;


 int MEGASAS_MAX_SZ_CHAIN_FRAME ;
 int MEGASAS_THUNDERBOLT_MSG_ALLIGNMENT ;

uint32_t
mfi_tbolt_get_memory_requirement(struct mfi_softc *sc)
{
 uint32_t size;
 size = MEGASAS_THUNDERBOLT_MSG_ALLIGNMENT;
 size += sc->raid_io_msg_size * (sc->mfi_max_fw_cmds + 1);
 size += sc->reply_size * sc->mfi_max_fw_cmds;

 size += MEGASAS_MAX_SZ_CHAIN_FRAME * sc->mfi_max_fw_cmds;
 return size;
}
