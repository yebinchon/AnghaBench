#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx5_fpga_device {int /*<<< orphan*/  mdev; } ;
struct mlx5_fpga_conn_attr {int tx_size; int rx_size; int /*<<< orphan*/  cb_arg; scalar_t__ recv_cb; } ;
struct TYPE_5__ {int qpn; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  backlog; } ;
struct TYPE_6__ {int /*<<< orphan*/  sgid_index; TYPE_2__ mqp; TYPE_1__ sq; } ;
struct mlx5_fpga_conn {TYPE_3__ qp; int /*<<< orphan*/  fpga_qpn; struct mlx5_fpga_device* fdev; int /*<<< orphan*/  fpga_qpc; int /*<<< orphan*/  cb_arg; scalar_t__ recv_cb; } ;
typedef  enum mlx5_ifc_fpga_qp_type { ____Placeholder_mlx5_ifc_fpga_qp_type } mlx5_ifc_fpga_qp_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct mlx5_fpga_conn* FUNC0 (int) ; 
 int ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int MLX5_FPGA_PKEY ; 
 int MLX5_FPGA_QPC_STATE_INIT ; 
 int MLX5_FPGA_QPC_ST_RC ; 
 int /*<<< orphan*/  MLX5_ROCE_L3_TYPE_IPV6 ; 
 int /*<<< orphan*/  MLX5_ROCE_VERSION_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int ether_type ; 
 int /*<<< orphan*/  fpga_qpc ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_conn*) ; 
 struct mlx5_fpga_conn* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_fpga_conn*) ; 
 int FUNC11 (struct mlx5_fpga_conn*) ; 
 int FUNC12 (struct mlx5_fpga_conn*,int) ; 
 int FUNC13 (struct mlx5_fpga_conn*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_fpga_conn*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_fpga_device*,char*,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int next_rcv_psn ; 
 int next_send_psn ; 
 int pkey ; 
 int* remote_mac_47_32 ; 
 int remote_qpn ; 
 int retry_count ; 
 int rnr_retry ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int st ; 
 int state ; 
 int vid ; 

struct mlx5_fpga_conn *FUNC22(struct mlx5_fpga_device *fdev,
					     struct mlx5_fpga_conn_attr *attr,
					     enum mlx5_ifc_fpga_qp_type qp_type)
{
	struct mlx5_fpga_conn *ret, *conn;
	u8 *remote_mac, *remote_ip;
	int err;

	if (!attr->recv_cb)
		return FUNC0(-EINVAL);

	conn = FUNC6(sizeof(*conn), GFP_KERNEL);
	if (!conn)
		return FUNC0(-ENOMEM);

	conn->fdev = fdev;
	FUNC1(&conn->qp.sq.backlog);

	FUNC21(&conn->qp.sq.lock);

	conn->recv_cb = attr->recv_cb;
	conn->cb_arg = attr->cb_arg;

	remote_mac = FUNC2(fpga_qpc, conn->fpga_qpc, remote_mac_47_32);
	err = FUNC20(fdev->mdev, 0, remote_mac);
	if (err) {
		FUNC19(fdev, "Failed to query local MAC: %d\n", err);
		ret = FUNC0(err);
		goto err;
	}

	/* Build Modified EUI-64 IPv6 address from the MAC address */
	remote_ip = FUNC2(fpga_qpc, conn->fpga_qpc, remote_ip);
	remote_ip[0] = 0xfe;
	remote_ip[1] = 0x80;
	FUNC4(&remote_ip[8], remote_mac);

	err = FUNC7(fdev->mdev, &conn->qp.sgid_index);
	if (err) {
		FUNC19(fdev, "Failed to allocate SGID: %d\n", err);
		ret = FUNC0(err);
		goto err;
	}

	err = FUNC9(fdev->mdev, conn->qp.sgid_index,
				     MLX5_ROCE_VERSION_2,
				     MLX5_ROCE_L3_TYPE_IPV6,
				     remote_ip, remote_mac, true, 0);
	if (err) {
		FUNC19(fdev, "Failed to set SGID: %d\n", err);
		ret = FUNC0(err);
		goto err_rsvd_gid;
	}
	FUNC17(fdev, "Reserved SGID index %u\n", conn->qp.sgid_index);

	/* Allow for one cqe per rx/tx wqe, plus one cqe for the next wqe,
	 * created during processing of the cqe
	 */
	err = FUNC12(conn,
				       (attr->tx_size + attr->rx_size) * 2);
	if (err) {
		FUNC19(fdev, "Failed to create CQ: %d\n", err);
		ret = FUNC0(err);
		goto err_gid;
	}

	FUNC10(conn);

	err = FUNC13(conn, attr->tx_size, attr->rx_size);
	if (err) {
		FUNC19(fdev, "Failed to create QP: %d\n", err);
		ret = FUNC0(err);
		goto err_cq;
	}

	FUNC3(fpga_qpc, conn->fpga_qpc, state, MLX5_FPGA_QPC_STATE_INIT);
	FUNC3(fpga_qpc, conn->fpga_qpc, qp_type, qp_type);
	FUNC3(fpga_qpc, conn->fpga_qpc, st, MLX5_FPGA_QPC_ST_RC);
	FUNC3(fpga_qpc, conn->fpga_qpc, ether_type, ETH_P_8021Q);
	FUNC3(fpga_qpc, conn->fpga_qpc, vid, 0);
	FUNC3(fpga_qpc, conn->fpga_qpc, next_rcv_psn, 1);
	FUNC3(fpga_qpc, conn->fpga_qpc, next_send_psn, 0);
	FUNC3(fpga_qpc, conn->fpga_qpc, pkey, MLX5_FPGA_PKEY);
	FUNC3(fpga_qpc, conn->fpga_qpc, remote_qpn, conn->qp.mqp.qpn);
	FUNC3(fpga_qpc, conn->fpga_qpc, rnr_retry, 7);
	FUNC3(fpga_qpc, conn->fpga_qpc, retry_count, 7);

	err = FUNC16(fdev->mdev, &conn->fpga_qpc,
				  &conn->fpga_qpn);
	if (err) {
		FUNC19(fdev, "Failed to create FPGA RC QP: %d\n", err);
		ret = FUNC0(err);
		goto err_qp;
	}

	err = FUNC11(conn);
	if (err) {
		ret = FUNC0(err);
		goto err_conn;
	}

	FUNC17(fdev, "FPGA QPN is %u\n", conn->fpga_qpn);
	ret = conn;
	goto out;

err_conn:
	FUNC18(conn->fdev->mdev, conn->fpga_qpn);
err_qp:
	FUNC15(conn);
err_cq:
	FUNC14(conn);
err_gid:
	FUNC9(fdev->mdev, conn->qp.sgid_index, 0, 0, NULL,
			       NULL, false, 0);
err_rsvd_gid:
	FUNC8(fdev->mdev, conn->qp.sgid_index);
err:
	FUNC5(conn);
out:
	return ret;
}