#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_destination {int type; int vport_num; int tir_num; TYPE_1__* ft; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE 130 
#define  MLX5_FLOW_CONTEXT_DEST_TYPE_TIR 129 
#define  MLX5_FLOW_CONTEXT_DEST_TYPE_VPORT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 

__attribute__((used)) static char *FUNC3(struct mlx5_flow_destination *dest)
{
	char *name = FUNC1(sizeof(char) * 20, GFP_KERNEL);

	switch (dest->type) {
	case MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE:
		FUNC2(name, 20, "dest_%s_%u", "flow_table",
			 dest->ft->id);
		return name;
	case MLX5_FLOW_CONTEXT_DEST_TYPE_VPORT:
		FUNC2(name, 20, "dest_%s_%u", "vport",
			 dest->vport_num);
		return name;
	case MLX5_FLOW_CONTEXT_DEST_TYPE_TIR:
		FUNC2(name, 20, "dest_%s_%u", "tir", dest->tir_num);
		return name;
	default:
		FUNC0(name);
		return NULL;
	}
}