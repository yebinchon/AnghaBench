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
struct mlx4_err_cqe {int /*<<< orphan*/  syndrome; int /*<<< orphan*/  vendor_err_syndrome; } ;
struct mlx4_en_priv {int dummy; } ;
struct mlx4_cqe {int owner_sr_opcode; int badfcs_enc; } ;

/* Variables and functions */
 int MLX4_CQE_BAD_FCS ; 
 int MLX4_CQE_OPCODE_ERROR ; 
 int MLX4_CQE_OPCODE_MASK ; 
 int /*<<< orphan*/  RX_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct mlx4_en_priv *priv,
			      struct mlx4_cqe *cqe)
{
	/* Drop packet on bad receive or bad checksum */
	if (FUNC2((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) ==
		     MLX4_CQE_OPCODE_ERROR)) {
		FUNC1(priv, "CQE completed in error - vendor syndrom:%d syndrom:%d\n",
		       ((struct mlx4_err_cqe *)cqe)->vendor_err_syndrome,
		       ((struct mlx4_err_cqe *)cqe)->syndrome);
		return 1;
	}
	if (FUNC2(cqe->badfcs_enc & MLX4_CQE_BAD_FCS)) {
		FUNC0(RX_ERR, priv, "Accepted frame with bad FCS\n");
		return 1;
	}

	return 0;
}