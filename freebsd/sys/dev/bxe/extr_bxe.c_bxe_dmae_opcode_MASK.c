#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int DMAE_CMD_DST_RESET ; 
 int DMAE_CMD_DST_SHIFT ; 
 int DMAE_CMD_DST_VN_SHIFT ; 
 int DMAE_CMD_E1HVN_SHIFT ; 
 int DMAE_CMD_ENDIANITY_B_DW_SWAP ; 
 int DMAE_CMD_ENDIANITY_DW_SWAP ; 
 int DMAE_CMD_ERR_POLICY_SHIFT ; 
 int DMAE_CMD_PORT_0 ; 
 int DMAE_CMD_PORT_1 ; 
 int DMAE_CMD_SRC_RESET ; 
 int DMAE_CMD_SRC_SHIFT ; 
 int DMAE_COM_SET_ERR ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (int,int) ; 

uint32_t
FUNC3(struct bxe_softc *sc,
                uint8_t          src_type,
                uint8_t          dst_type,
                uint8_t          with_comp,
                uint8_t          comp_type)
{
    uint32_t opcode = 0;

    opcode |= ((src_type << DMAE_CMD_SRC_SHIFT) |
               (dst_type << DMAE_CMD_DST_SHIFT));

    opcode |= (DMAE_CMD_SRC_RESET | DMAE_CMD_DST_RESET);

    opcode |= (FUNC0(sc) ? DMAE_CMD_PORT_1 : DMAE_CMD_PORT_0);

    opcode |= ((FUNC1(sc) << DMAE_CMD_E1HVN_SHIFT) |
               (FUNC1(sc) << DMAE_CMD_DST_VN_SHIFT));

    opcode |= (DMAE_COM_SET_ERR << DMAE_CMD_ERR_POLICY_SHIFT);

#ifdef __BIG_ENDIAN
    opcode |= DMAE_CMD_ENDIANITY_B_DW_SWAP;
#else
    opcode |= DMAE_CMD_ENDIANITY_DW_SWAP;
#endif

    if (with_comp) {
        opcode = FUNC2(opcode, comp_type);
    }

    return (opcode);
}