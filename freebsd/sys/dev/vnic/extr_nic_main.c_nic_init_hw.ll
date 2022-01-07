; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@NIC_PF_CFG = common dso_local global i32 0, align 4
@NIC_PF_BP_CFG = common dso_local global i32 0, align 4
@NIC_TNS_ENABLED = common dso_local global i32 0, align 4
@NIC_PF_INTF_0_1_SEND_CFG = common dso_local global i32 0, align 4
@NIC_TNS_MODE = common dso_local global i32 0, align 4
@TNS_PORT0_BLOCK = common dso_local global i32 0, align 4
@TNS_PORT1_BLOCK = common dso_local global i32 0, align 4
@NIC_PF_INTF_0_1_BP_CFG = common dso_local global i32 0, align 4
@NIC_TNS_BYPASS_MODE = common dso_local global i32 0, align 4
@BGX0_BLOCK = common dso_local global i32 0, align 4
@BGX1_BLOCK = common dso_local global i32 0, align 4
@NIC_HW_MAX_FRS = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@NIC_MAX_PKIND = common dso_local global i32 0, align 4
@NIC_PF_PKIND_0_15_CFG = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@NIC_PF_INTR_TIMER_CFG = common dso_local global i32 0, align 4
@NICPF_CLK_PER_INT_TICK = common dso_local global i32 0, align 4
@NIC_PF_RX_ETYPE_0_7 = common dso_local global i32 0, align 4
@ETYPE_ALG_VLAN_STRIP = common dso_local global i32 0, align 4
@ETHERTYPE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_init_hw(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %4 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %5 = load i32, i32* @NIC_PF_CFG, align 4
  %6 = call i32 @nic_reg_write(%struct.nicpf* %4, i32 %5, i32 3)
  %7 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %8 = load i32, i32* @NIC_PF_BP_CFG, align 4
  %9 = call i32 @nic_reg_write(%struct.nicpf* %7, i32 %8, i32 67)
  %10 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %11 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NIC_TNS_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %18 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %19 = load i32, i32* @NIC_TNS_MODE, align 4
  %20 = shl i32 %19, 7
  %21 = load i32, i32* @TNS_PORT0_BLOCK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @nic_reg_write(%struct.nicpf* %17, i32 %18, i32 %22)
  %24 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %25 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %26 = or i32 %25, 256
  %27 = load i32, i32* @NIC_TNS_MODE, align 4
  %28 = shl i32 %27, 7
  %29 = load i32, i32* @TNS_PORT1_BLOCK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @nic_reg_write(%struct.nicpf* %24, i32 %26, i32 %30)
  %32 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %33 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %34 = load i32, i32* @TNS_PORT0_BLOCK, align 4
  %35 = sext i32 %34 to i64
  %36 = or i64 -9223372036854775808, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @nic_reg_write(%struct.nicpf* %32, i32 %33, i32 %37)
  %39 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %40 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %41 = add nsw i32 %40, 256
  %42 = load i32, i32* @TNS_PORT1_BLOCK, align 4
  %43 = sext i32 %42 to i64
  %44 = or i64 -9223372036854775808, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @nic_reg_write(%struct.nicpf* %39, i32 %41, i32 %45)
  br label %78

47:                                               ; preds = %1
  %48 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %49 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %50 = load i32, i32* @NIC_TNS_BYPASS_MODE, align 4
  %51 = shl i32 %50, 7
  %52 = load i32, i32* @BGX0_BLOCK, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @nic_reg_write(%struct.nicpf* %48, i32 %49, i32 %53)
  %55 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %56 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %57 = or i32 %56, 256
  %58 = load i32, i32* @NIC_TNS_BYPASS_MODE, align 4
  %59 = shl i32 %58, 7
  %60 = load i32, i32* @BGX1_BLOCK, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @nic_reg_write(%struct.nicpf* %55, i32 %57, i32 %61)
  %63 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %64 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %65 = load i32, i32* @BGX0_BLOCK, align 4
  %66 = sext i32 %65 to i64
  %67 = or i64 -9223372036854775808, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @nic_reg_write(%struct.nicpf* %63, i32 %64, i32 %68)
  %70 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %71 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %72 = add nsw i32 %71, 256
  %73 = load i32, i32* @BGX1_BLOCK, align 4
  %74 = sext i32 %73 to i64
  %75 = or i64 -9223372036854775808, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @nic_reg_write(%struct.nicpf* %70, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %47, %16
  %79 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %80 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* @NIC_HW_MAX_FRS, align 8
  %83 = load i64, i64* @ETHER_HDR_LEN, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %86 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i64 %84, i64* %87, align 8
  %88 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %89 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %92 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %95 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %112, %78
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @NIC_MAX_PKIND, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %103 = load i32, i32* @NIC_PF_PKIND_0_15_CFG, align 4
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %104, 3
  %106 = or i32 %103, %105
  %107 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %108 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %107, i32 0, i32 1
  %109 = bitcast %struct.TYPE_2__* %108 to i32*
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @nic_reg_write(%struct.nicpf* %102, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %117 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %118 = call i32 @nic_set_tx_pkt_pad(%struct.nicpf* %116, i32 %117)
  %119 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %120 = load i32, i32* @NIC_PF_INTR_TIMER_CFG, align 4
  %121 = load i32, i32* @NICPF_CLK_PER_INT_TICK, align 4
  %122 = call i32 @nic_reg_write(%struct.nicpf* %119, i32 %120, i32 %121)
  %123 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %124 = load i32, i32* @NIC_PF_RX_ETYPE_0_7, align 4
  %125 = load i32, i32* @ETYPE_ALG_VLAN_STRIP, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 1048576, %126
  %128 = load i32, i32* @ETHERTYPE_VLAN, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @nic_reg_write(%struct.nicpf* %123, i32 %124, i32 %129)
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

declare dso_local i32 @nic_set_tx_pkt_pad(%struct.nicpf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
