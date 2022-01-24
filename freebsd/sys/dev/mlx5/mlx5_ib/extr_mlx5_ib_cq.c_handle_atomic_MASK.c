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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mlx5_ib_qp {int dummy; } ;
struct mlx5_cqe64 {int /*<<< orphan*/  byte_cnt; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_qp *qp, struct mlx5_cqe64 *cqe64,
			  uint16_t idx)
{
	void *addr;
	int byte_count;
	int i;

	if (!FUNC2(qp, idx))
		return;

	byte_count = FUNC0(cqe64->byte_cnt);
	addr = FUNC3(qp, idx);

	if (byte_count == 4) {
		*(uint32_t *)addr = FUNC0(*((__be32 *)addr));
	} else {
		for (i = 0; i < byte_count; i += 8) {
			*(uint64_t *)addr = FUNC1(*((__be64 *)addr));
			addr += 8;
		}
	}

	return;
}