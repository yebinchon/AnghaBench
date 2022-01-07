; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_init_function_ptrs_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_init_function_ptrs_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_hw_if = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"-->xgbe_init_function_ptrs\0A\00", align 1
@xgbe_tx_complete = common dso_local global i32 0, align 4
@xgbe_set_mac_address = common dso_local global i32 0, align 4
@xgbe_config_rx_mode = common dso_local global i32 0, align 4
@xgbe_enable_rx_csum = common dso_local global i32 0, align 4
@xgbe_disable_rx_csum = common dso_local global i32 0, align 4
@xgbe_enable_rx_vlan_stripping = common dso_local global i32 0, align 4
@xgbe_disable_rx_vlan_stripping = common dso_local global i32 0, align 4
@xgbe_enable_rx_vlan_filtering = common dso_local global i32 0, align 4
@xgbe_disable_rx_vlan_filtering = common dso_local global i32 0, align 4
@xgbe_update_vlan_hash_table = common dso_local global i32 0, align 4
@xgbe_read_mmd_regs = common dso_local global i32 0, align 4
@xgbe_write_mmd_regs = common dso_local global i32 0, align 4
@xgbe_set_gmii_speed = common dso_local global i32 0, align 4
@xgbe_set_gmii_2500_speed = common dso_local global i32 0, align 4
@xgbe_set_xgmii_speed = common dso_local global i32 0, align 4
@xgbe_enable_tx = common dso_local global i32 0, align 4
@xgbe_disable_tx = common dso_local global i32 0, align 4
@xgbe_enable_rx = common dso_local global i32 0, align 4
@xgbe_disable_rx = common dso_local global i32 0, align 4
@xgbe_powerup_tx = common dso_local global i32 0, align 4
@xgbe_powerdown_tx = common dso_local global i32 0, align 4
@xgbe_powerup_rx = common dso_local global i32 0, align 4
@xgbe_powerdown_rx = common dso_local global i32 0, align 4
@xgbe_dev_xmit = common dso_local global i32 0, align 4
@xgbe_dev_read = common dso_local global i32 0, align 4
@xgbe_enable_int = common dso_local global i32 0, align 4
@xgbe_disable_int = common dso_local global i32 0, align 4
@xgbe_init = common dso_local global i32 0, align 4
@xgbe_exit = common dso_local global i32 0, align 4
@xgbe_tx_desc_init = common dso_local global i32 0, align 4
@xgbe_rx_desc_init = common dso_local global i32 0, align 4
@xgbe_tx_desc_reset = common dso_local global i32 0, align 4
@xgbe_rx_desc_reset = common dso_local global i32 0, align 4
@xgbe_is_last_desc = common dso_local global i32 0, align 4
@xgbe_is_context_desc = common dso_local global i32 0, align 4
@xgbe_tx_start_xmit = common dso_local global i32 0, align 4
@xgbe_config_tx_flow_control = common dso_local global i32 0, align 4
@xgbe_config_rx_flow_control = common dso_local global i32 0, align 4
@xgbe_config_rx_coalesce = common dso_local global i32 0, align 4
@xgbe_config_tx_coalesce = common dso_local global i32 0, align 4
@xgbe_usec_to_riwt = common dso_local global i32 0, align 4
@xgbe_riwt_to_usec = common dso_local global i32 0, align 4
@xgbe_config_rx_threshold = common dso_local global i32 0, align 4
@xgbe_config_tx_threshold = common dso_local global i32 0, align 4
@xgbe_config_rsf_mode = common dso_local global i32 0, align 4
@xgbe_config_tsf_mode = common dso_local global i32 0, align 4
@xgbe_config_osp_mode = common dso_local global i32 0, align 4
@xgbe_config_rx_pbl_val = common dso_local global i32 0, align 4
@xgbe_get_rx_pbl_val = common dso_local global i32 0, align 4
@xgbe_config_tx_pbl_val = common dso_local global i32 0, align 4
@xgbe_get_tx_pbl_val = common dso_local global i32 0, align 4
@xgbe_config_pblx8 = common dso_local global i32 0, align 4
@xgbe_tx_mmc_int = common dso_local global i32 0, align 4
@xgbe_rx_mmc_int = common dso_local global i32 0, align 4
@xgbe_read_mmc_stats = common dso_local global i32 0, align 4
@xgbe_disable_rss = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"<--xgbe_init_function_ptrs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_init_function_ptrs_dev(%struct.xgbe_hw_if* %0) #0 {
  %2 = alloca %struct.xgbe_hw_if*, align 8
  store %struct.xgbe_hw_if* %0, %struct.xgbe_hw_if** %2, align 8
  %3 = call i32 @DBGPR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @xgbe_tx_complete, align 4
  %5 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %5, i32 0, i32 55
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @xgbe_set_mac_address, align 4
  %8 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %8, i32 0, i32 54
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @xgbe_config_rx_mode, align 4
  %11 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %11, i32 0, i32 53
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @xgbe_enable_rx_csum, align 4
  %14 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %14, i32 0, i32 52
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @xgbe_disable_rx_csum, align 4
  %17 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %17, i32 0, i32 51
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @xgbe_enable_rx_vlan_stripping, align 4
  %20 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %20, i32 0, i32 50
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @xgbe_disable_rx_vlan_stripping, align 4
  %23 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %23, i32 0, i32 49
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @xgbe_enable_rx_vlan_filtering, align 4
  %26 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %26, i32 0, i32 48
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @xgbe_disable_rx_vlan_filtering, align 4
  %29 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %29, i32 0, i32 47
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @xgbe_update_vlan_hash_table, align 4
  %32 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %33 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %32, i32 0, i32 46
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @xgbe_read_mmd_regs, align 4
  %35 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %36 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %35, i32 0, i32 45
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @xgbe_write_mmd_regs, align 4
  %38 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %39 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %38, i32 0, i32 44
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @xgbe_set_gmii_speed, align 4
  %41 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %41, i32 0, i32 43
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @xgbe_set_gmii_2500_speed, align 4
  %44 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %45 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %44, i32 0, i32 42
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @xgbe_set_xgmii_speed, align 4
  %47 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %47, i32 0, i32 41
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @xgbe_enable_tx, align 4
  %50 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %50, i32 0, i32 40
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @xgbe_disable_tx, align 4
  %53 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %54 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %53, i32 0, i32 39
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @xgbe_enable_rx, align 4
  %56 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %57 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %56, i32 0, i32 38
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @xgbe_disable_rx, align 4
  %59 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %60 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %59, i32 0, i32 37
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @xgbe_powerup_tx, align 4
  %62 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %62, i32 0, i32 36
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @xgbe_powerdown_tx, align 4
  %65 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %66 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %65, i32 0, i32 35
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @xgbe_powerup_rx, align 4
  %68 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %69 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %68, i32 0, i32 34
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @xgbe_powerdown_rx, align 4
  %71 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %72 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %71, i32 0, i32 33
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @xgbe_dev_xmit, align 4
  %74 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %75 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %74, i32 0, i32 32
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @xgbe_dev_read, align 4
  %77 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %77, i32 0, i32 31
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @xgbe_enable_int, align 4
  %80 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %81 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %80, i32 0, i32 30
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @xgbe_disable_int, align 4
  %83 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %84 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %83, i32 0, i32 29
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @xgbe_init, align 4
  %86 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %87 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %86, i32 0, i32 28
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @xgbe_exit, align 4
  %89 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %89, i32 0, i32 27
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @xgbe_tx_desc_init, align 4
  %92 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %92, i32 0, i32 26
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @xgbe_rx_desc_init, align 4
  %95 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %96 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %95, i32 0, i32 25
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @xgbe_tx_desc_reset, align 4
  %98 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %99 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %98, i32 0, i32 24
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @xgbe_rx_desc_reset, align 4
  %101 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %102 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %101, i32 0, i32 23
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @xgbe_is_last_desc, align 4
  %104 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %105 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %104, i32 0, i32 22
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @xgbe_is_context_desc, align 4
  %107 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %108 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %107, i32 0, i32 21
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @xgbe_tx_start_xmit, align 4
  %110 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %111 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %110, i32 0, i32 20
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @xgbe_config_tx_flow_control, align 4
  %113 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %114 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %113, i32 0, i32 19
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @xgbe_config_rx_flow_control, align 4
  %116 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %117 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %116, i32 0, i32 18
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @xgbe_config_rx_coalesce, align 4
  %119 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %120 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %119, i32 0, i32 17
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @xgbe_config_tx_coalesce, align 4
  %122 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %123 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %122, i32 0, i32 16
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @xgbe_usec_to_riwt, align 4
  %125 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %126 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %125, i32 0, i32 15
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @xgbe_riwt_to_usec, align 4
  %128 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %129 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %128, i32 0, i32 14
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @xgbe_config_rx_threshold, align 4
  %131 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %132 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %131, i32 0, i32 13
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @xgbe_config_tx_threshold, align 4
  %134 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %135 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %134, i32 0, i32 12
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @xgbe_config_rsf_mode, align 4
  %137 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %138 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @xgbe_config_tsf_mode, align 4
  %140 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %141 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @xgbe_config_osp_mode, align 4
  %143 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %144 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @xgbe_config_rx_pbl_val, align 4
  %146 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %147 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @xgbe_get_rx_pbl_val, align 4
  %149 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %150 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @xgbe_config_tx_pbl_val, align 4
  %152 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %153 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @xgbe_get_tx_pbl_val, align 4
  %155 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %156 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @xgbe_config_pblx8, align 4
  %158 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %159 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @xgbe_tx_mmc_int, align 4
  %161 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %162 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @xgbe_rx_mmc_int, align 4
  %164 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %165 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @xgbe_read_mmc_stats, align 4
  %167 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %168 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @xgbe_disable_rss, align 4
  %170 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %2, align 8
  %171 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = call i32 @DBGPR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
