#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ena_stats_dev {int dummy; } ;
struct ena_llq_configurations {int dummy; } ;
struct ena_hw_stats {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;
struct ena_com_dev_get_features_ctx {TYPE_2__ dev_attr; TYPE_1__ offload; int /*<<< orphan*/  llq; } ;
struct ena_com_dev {scalar_t__ tx_mem_queue_type; struct ena_com_dev* bus; void* dmadev; } ;
struct ena_calc_queue_size_ctx {int /*<<< orphan*/  tx_queue_size; int /*<<< orphan*/  rx_queue_size; int /*<<< orphan*/  max_rx_sgl_size; int /*<<< orphan*/  max_tx_sgl_size; void* pdev; struct ena_com_dev_get_features_ctx* get_feat_ctx; struct ena_com_dev* ena_dev; int /*<<< orphan*/  member_0; } ;
struct ena_bus {scalar_t__ reg_bar_h; int /*<<< orphan*/  reg_bar_t; } ;
struct ena_adapter {int num_queues; struct ena_com_dev* ena_dev; int /*<<< orphan*/  ifp; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  dev_stats; void* pdev; int /*<<< orphan*/  reset_tq; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  buf_ring_size; int /*<<< orphan*/  max_rx_sgl_size; int /*<<< orphan*/  max_tx_sgl_size; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  tx_offload_cap; int /*<<< orphan*/  keep_alive_timestamp; int /*<<< orphan*/  wd_active; int /*<<< orphan*/ * registers; int /*<<< orphan*/ * memory; int /*<<< orphan*/  missing_tx_threshold; int /*<<< orphan*/  missing_tx_max_queues; int /*<<< orphan*/  missing_tx_timeout; int /*<<< orphan*/  keep_alive_timeout; int /*<<< orphan*/  global_mtx; int /*<<< orphan*/  timer_service; int /*<<< orphan*/  ioctl_sx; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  counter_u64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_KEEP_ALIVE_TO ; 
 int /*<<< orphan*/  DEFAULT_TX_CMP_THRESHOLD ; 
 int /*<<< orphan*/  DEFAULT_TX_CMP_TO ; 
 int /*<<< orphan*/  DEFAULT_TX_MONITORED_QUEUES ; 
 int EFAULT ; 
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  ENA_DEFAULT_BUF_RING_SIZE ; 
 int /*<<< orphan*/  ENA_DEFAULT_RING_SIZE ; 
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_REGS_RESET_INIT_ERR ; 
 int /*<<< orphan*/  ENA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  ENA_REG_BAR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct ena_adapter* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int FUNC12 (struct ena_adapter*,struct ena_calc_queue_size_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ena_com_dev*) ; 
 int FUNC17 (struct ena_adapter*,void*,struct ena_com_dev_get_features_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ena_adapter*) ; 
 int FUNC19 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC23 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct ena_adapter*) ; 
 int FUNC26 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ena_reset_task ; 
 int FUNC27 (void*,struct ena_com_dev*,int /*<<< orphan*/ *,struct ena_llq_configurations*) ; 
 int FUNC28 (void*,struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int FUNC29 (struct ena_adapter*) ; 
 int FUNC30 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC31 (struct ena_adapter*) ; 
 int ena_version ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC36 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct ena_llq_configurations*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC43 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 scalar_t__ FUNC45 (int) ; 

__attribute__((used)) static int
FUNC46(device_t pdev)
{
	struct ena_com_dev_get_features_ctx get_feat_ctx;
	struct ena_llq_configurations llq_config;
	struct ena_calc_queue_size_ctx calc_queue_ctx = { 0 };
	static int version_printed;
	struct ena_adapter *adapter;
	struct ena_com_dev *ena_dev = NULL;
	const char *queue_type_str;
	int io_queue_num;
	int rid, rc;

	adapter = FUNC8(pdev);
	adapter->pdev = pdev;

	FUNC38(&adapter->global_mtx, "ENA global mtx", NULL, MTX_DEF);
	FUNC42(&adapter->ioctl_sx, "ENA ioctl sx");

	/* Set up the timer service */
	FUNC6(&adapter->timer_service, &adapter->global_mtx, 0);
	adapter->keep_alive_timeout = DEFAULT_KEEP_ALIVE_TO;
	adapter->missing_tx_timeout = DEFAULT_TX_CMP_TO;
	adapter->missing_tx_max_queues = DEFAULT_TX_MONITORED_QUEUES;
	adapter->missing_tx_threshold = DEFAULT_TX_CMP_THRESHOLD;

	if (version_printed++ == 0)
		FUNC9(pdev, "%s\n", ena_version);

	/* Allocate memory for ena_dev structure */
	ena_dev = FUNC36(sizeof(struct ena_com_dev), M_DEVBUF,
	    M_WAITOK | M_ZERO);

	adapter->ena_dev = ena_dev;
	ena_dev->dmadev = pdev;

	rid = FUNC3(ENA_REG_BAR);
	adapter->memory = NULL;
	adapter->registers = FUNC5(pdev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (FUNC45(adapter->registers == NULL)) {
		FUNC9(pdev,
		    "unable to allocate bus resource: registers!\n");
		rc = ENOMEM;
		goto err_dev_free;
	}

	ena_dev->bus = FUNC36(sizeof(struct ena_bus), M_DEVBUF,
	    M_WAITOK | M_ZERO);

	/* Store register resources */
	((struct ena_bus*)(ena_dev->bus))->reg_bar_t =
	    FUNC40(adapter->registers);
	((struct ena_bus*)(ena_dev->bus))->reg_bar_h =
	    FUNC39(adapter->registers);

	if (FUNC45(((struct ena_bus*)(ena_dev->bus))->reg_bar_h == 0)) {
		FUNC9(pdev, "failed to pmap registers bar\n");
		rc = ENXIO;
		goto err_bus_free;
	}

	ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;

	/* Initially clear all the flags */
	FUNC2(adapter);

	/* Device initialization */
	rc = FUNC17(adapter, pdev, &get_feat_ctx, &adapter->wd_active);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev, "ENA device init failed! (err: %d)\n", rc);
		rc = ENXIO;
		goto err_bus_free;
	}

	FUNC41(&llq_config);

	rc = FUNC27(pdev, ena_dev, &get_feat_ctx.llq,
	     &llq_config);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev, "failed to set placement policy\n");
		goto err_com_free;
	}

	if (ena_dev->tx_mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST)
		queue_type_str = "Regular";
	else
		queue_type_str = "Low Latency";
	FUNC9(pdev, "Placement policy: %s\n", queue_type_str);

	adapter->keep_alive_timestamp = FUNC34();

	adapter->tx_offload_cap = get_feat_ctx.offload.tx;

	FUNC37(adapter->mac_addr, get_feat_ctx.dev_attr.mac_addr,
	    ETHER_ADDR_LEN);

	calc_queue_ctx.ena_dev = ena_dev;
	calc_queue_ctx.get_feat_ctx = &get_feat_ctx;
	calc_queue_ctx.pdev = pdev;

	/* calculate IO queue number to create */
	io_queue_num = FUNC11(adapter, &get_feat_ctx);

	FUNC0(io_queue_num > 0, "Invalid queue number: %d\n",
	    io_queue_num);
	adapter->num_queues = io_queue_num;

	adapter->max_mtu = get_feat_ctx.dev_attr.max_mtu;
	// Set the requested Rx ring size
	adapter->rx_ring_size = ENA_DEFAULT_RING_SIZE;
	/* calculatre ring sizes */
	rc = FUNC12(adapter, &calc_queue_ctx);
	if (FUNC45((rc != 0) || (io_queue_num <= 0))) {
		rc = EFAULT;
		goto err_com_free;
	}

	adapter->reset_reason = ENA_REGS_RESET_NORMAL;

	adapter->tx_ring_size = calc_queue_ctx.tx_queue_size;
	adapter->rx_ring_size = calc_queue_ctx.rx_queue_size;

	adapter->max_tx_sgl_size = calc_queue_ctx.max_tx_sgl_size;
	adapter->max_rx_sgl_size = calc_queue_ctx.max_rx_sgl_size;

	adapter->buf_ring_size = ENA_DEFAULT_BUF_RING_SIZE;

	/* set up dma tags for rx and tx buffers */
	rc = FUNC30(adapter);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev, "Failed to create TX DMA tag\n");
		goto err_com_free;
	}

	rc = FUNC29(adapter);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev, "Failed to create RX DMA tag\n");
		goto err_tx_tag_free;
	}

	/* initialize rings basic information */
	FUNC9(pdev,
	    "Creating %d io queues. Rx queue size: %d, Tx queue size: %d\n",
	    io_queue_num,
	    calc_queue_ctx.rx_queue_size,
	    calc_queue_ctx.tx_queue_size);
	FUNC25(adapter);

	rc = FUNC19(adapter, io_queue_num);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev,
		    "Failed to enable and set the admin interrupts\n");
		goto err_io_free;
	}

	/* setup network interface */
	rc = FUNC28(pdev, adapter, &get_feat_ctx);
	if (FUNC45(rc != 0)) {
		FUNC9(pdev, "Error with network interface setup\n");
		goto err_msix_free;
	}

	/* Initialize reset task queue */
	FUNC4(&adapter->reset_task, 0, ena_reset_task, adapter);
	adapter->reset_tq = FUNC43("ena_reset_enqueue",
	    M_WAITOK | M_ZERO, taskqueue_thread_enqueue, &adapter->reset_tq);
	FUNC44(&adapter->reset_tq, 1, PI_NET,
	    "%s rstq", FUNC7(adapter->pdev));

	/* Initialize statistics */
	FUNC10((counter_u64_t *)&adapter->dev_stats,
	    sizeof(struct ena_stats_dev));
	FUNC10((counter_u64_t *)&adapter->hw_stats,
	    sizeof(struct ena_hw_stats));
	FUNC31(adapter);

#ifdef DEV_NETMAP
	rc = ena_netmap_attach(adapter);
	if (rc != 0) {
		device_printf(pdev, "netmap attach failed: %d\n", rc);
		goto err_detach;
	}
#endif /* DEV_NETMAP */

	/* Tell the stack that the interface is not active */
	FUNC35(adapter->ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
	FUNC1(ENA_FLAG_DEVICE_RUNNING, adapter);

	return (0);

#ifdef DEV_NETMAP
err_detach:
	ether_ifdetach(adapter->ifp);
#endif /* DEV_NETMAP */
err_msix_free:
	FUNC15(adapter->ena_dev, ENA_REGS_RESET_INIT_ERR);
	FUNC21(adapter);
	FUNC18(adapter);
err_io_free:
	FUNC20(adapter);
	FUNC23(adapter);
err_tx_tag_free:
	FUNC24(adapter);
err_com_free:
	FUNC13(ena_dev);
	FUNC14(ena_dev);
	FUNC16(ena_dev);
err_bus_free:
	FUNC33(ena_dev->bus, M_DEVBUF);
	FUNC22(adapter);
err_dev_free:
	FUNC33(ena_dev, M_DEVBUF);

	return (rc);
}