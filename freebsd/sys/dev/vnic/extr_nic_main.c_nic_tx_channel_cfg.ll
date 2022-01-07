; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_tx_channel_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_tx_channel_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32* }
%struct.sq_cfg_msg = type { i64 }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@NIC_TL4_PER_LMAC = common dso_local global i32 0, align 4
@NIC_TL4_PER_BGX = common dso_local global i32 0, align 4
@NIC_MAX_TL4 = common dso_local global i32 0, align 4
@NIC_MAX_TL3 = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_SQ_0_7_CFG2 = common dso_local global i32 0, align 4
@NIC_QS_ID_SHIFT = common dso_local global i32 0, align 4
@NIC_Q_NUM_SHIFT = common dso_local global i32 0, align 4
@NIC_PF_TL4_0_1023_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL3_0_255_CFG = common dso_local global i32 0, align 4
@MAX_BGX_CHANS_PER_LMAC = common dso_local global i32 0, align 4
@NIC_CHANS_PER_INF = common dso_local global i32 0, align 4
@NIC_PF_TL3_0_255_CHAN = common dso_local global i32 0, align 4
@NIC_PF_CHAN_0_255_TX_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL3A_0_63_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL2_0_63_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL2_0_63_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i64, %struct.sq_cfg_msg*)* @nic_tx_channel_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_tx_channel_cfg(%struct.nicpf* %0, i64 %1, %struct.sq_cfg_msg* %2) #0 {
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sq_cfg_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sq_cfg_msg* %2, %struct.sq_cfg_msg** %6, align 8
  %16 = load %struct.sq_cfg_msg*, %struct.sq_cfg_msg** %6, align 8
  %17 = getelementptr inbounds %struct.sq_cfg_msg, %struct.sq_cfg_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %15, align 8
  %20 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %21 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %15, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %28 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %15, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %35 = add nsw i32 %34, 24
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NIC_TL4_PER_LMAC, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NIC_TL4_PER_BGX, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @NIC_MAX_TL4, align 4
  %51 = load i32, i32* @NIC_MAX_TL3, align 4
  %52 = sdiv i32 %50, %51
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %55 = load i32, i32* @NIC_PF_QSET_0_127_SQ_0_7_CFG2, align 4
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %55, %59
  %61 = load i64, i64* %14, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %60, %64
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @nic_reg_write(%struct.nicpf* %54, i32 %65, i32 %66)
  %68 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %69 = load i32, i32* @NIC_PF_TL4_0_1023_CFG, align 4
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 3
  %72 = or i32 %69, %71
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 27
  %76 = load i64, i64* %14, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 24
  %79 = or i32 %75, %78
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @nic_reg_write(%struct.nicpf* %68, i32 %72, i32 %81)
  %83 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %84 = load i32, i32* @NIC_PF_TL3_0_255_CFG, align 4
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %85, 3
  %87 = or i32 %84, %86
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @nic_reg_write(%struct.nicpf* %83, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MAX_BGX_CHANS_PER_LMAC, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @NIC_CHANS_PER_INF, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %98 = load i32, i32* @NIC_PF_TL3_0_255_CHAN, align 4
  %99 = load i32, i32* %11, align 4
  %100 = shl i32 %99, 3
  %101 = or i32 %98, %100
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @nic_reg_write(%struct.nicpf* %97, i32 %101, i32 %102)
  %104 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %105 = load i32, i32* @NIC_PF_CHAN_0_255_TX_CFG, align 4
  %106 = load i32, i32* %9, align 4
  %107 = shl i32 %106, 3
  %108 = or i32 %105, %107
  %109 = call i32 @nic_reg_write(%struct.nicpf* %104, i32 %108, i32 1)
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 2
  store i32 %111, i32* %10, align 4
  %112 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %113 = load i32, i32* @NIC_PF_TL3A_0_63_CFG, align 4
  %114 = load i32, i32* %10, align 4
  %115 = shl i32 %114, 3
  %116 = or i32 %113, %115
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @nic_reg_write(%struct.nicpf* %112, i32 %116, i32 %117)
  %119 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %120 = load i32, i32* @NIC_PF_TL2_0_63_CFG, align 4
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 %121, 3
  %123 = or i32 %120, %122
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @nic_reg_write(%struct.nicpf* %119, i32 %123, i32 %124)
  %126 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %127 = load i32, i32* @NIC_PF_TL2_0_63_PRI, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 3
  %130 = or i32 %127, %129
  %131 = call i32 @nic_reg_write(%struct.nicpf* %126, i32 %130, i32 0)
  ret void
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
