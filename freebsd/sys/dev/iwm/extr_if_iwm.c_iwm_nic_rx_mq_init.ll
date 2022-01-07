; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nic_rx_mq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nic_rx_mq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IWM_RFH_RXF_DMA_CFG = common dso_local global i32 0, align 4
@IWM_RFH_RXF_RXQ_ACTIVE = common dso_local global i32 0, align 4
@IWM_RFH_Q0_FRBDCB_BA_LSB = common dso_local global i32 0, align 4
@IWM_RFH_Q0_URBDCB_BA_LSB = common dso_local global i32 0, align 4
@IWM_RFH_Q0_URBD_STTS_WPTR_LSB = common dso_local global i32 0, align 4
@IWM_RFH_Q0_FRBDCB_WIDX = common dso_local global i32 0, align 4
@IWM_RFH_Q0_FRBDCB_RIDX = common dso_local global i32 0, align 4
@IWM_RFH_Q0_URBDCB_WIDX = common dso_local global i32 0, align 4
@IWM_RFH_DMA_EN_ENABLE_VAL = common dso_local global i32 0, align 4
@IWM_RFH_RXF_DMA_RB_SIZE_4K = common dso_local global i32 0, align 4
@IWM_RFH_RXF_DMA_MIN_RB_4_8 = common dso_local global i32 0, align 4
@IWM_RFH_RXF_DMA_DROP_TOO_LARGE_MASK = common dso_local global i32 0, align 4
@IWM_RFH_RXF_DMA_RBDCB_SIZE_512 = common dso_local global i32 0, align 4
@IWM_RFH_GEN_CFG = common dso_local global i32 0, align 4
@IWM_RFH_GEN_CFG_RFH_DMA_SNOOP = common dso_local global i32 0, align 4
@IWM_RFH_GEN_CFG_SERVICE_DMA_SNOOP = common dso_local global i32 0, align 4
@IWM_RFH_GEN_CFG_RB_CHUNK_SIZE_64 = common dso_local global i32 0, align 4
@IWM_RFH_GEN_CFG_RB_CHUNK_SIZE_128 = common dso_local global i32 0, align 4
@IWM_CSR_INT_COALESCING = common dso_local global i32 0, align 4
@IWM_HOST_INT_TIMEOUT_DEF = common dso_local global i32 0, align 4
@IWM_RFH_Q0_FRBDCB_WIDX_TRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_nic_rx_mq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_nic_rx_mq_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %6 = call i32 @iwm_nic_lock(%struct.iwm_softc* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  store i32 %9, i32* %2, align 4
  br label %94

10:                                               ; preds = %1
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %12 = load i32, i32* @IWM_RFH_RXF_DMA_CFG, align 4
  %13 = call i32 @iwm_write_prph(%struct.iwm_softc* %11, i32 %12, i32 0)
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %15 = load i32, i32* @IWM_RFH_RXF_RXQ_ACTIVE, align 4
  %16 = call i32 @iwm_write_prph(%struct.iwm_softc* %14, i32 %15, i32 0)
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %18 = load i32, i32* @IWM_RFH_Q0_FRBDCB_BA_LSB, align 4
  %19 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %20 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iwm_write_prph64(%struct.iwm_softc* %17, i32 %18, i32 %23)
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %26 = load i32, i32* @IWM_RFH_Q0_URBDCB_BA_LSB, align 4
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %28 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iwm_write_prph64(%struct.iwm_softc* %25, i32 %26, i32 %31)
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %34 = load i32, i32* @IWM_RFH_Q0_URBD_STTS_WPTR_LSB, align 4
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %36 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @iwm_write_prph64(%struct.iwm_softc* %33, i32 %34, i32 %39)
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %42 = load i32, i32* @IWM_RFH_Q0_FRBDCB_WIDX, align 4
  %43 = call i32 @iwm_write_prph(%struct.iwm_softc* %41, i32 %42, i32 0)
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %45 = load i32, i32* @IWM_RFH_Q0_FRBDCB_RIDX, align 4
  %46 = call i32 @iwm_write_prph(%struct.iwm_softc* %44, i32 %45, i32 0)
  %47 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %48 = load i32, i32* @IWM_RFH_Q0_URBDCB_WIDX, align 4
  %49 = call i32 @iwm_write_prph(%struct.iwm_softc* %47, i32 %48, i32 0)
  store i32 65537, i32* %4, align 4
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %51 = load i32, i32* @IWM_RFH_RXF_DMA_CFG, align 4
  %52 = load i32, i32* @IWM_RFH_DMA_EN_ENABLE_VAL, align 4
  %53 = load i32, i32* @IWM_RFH_RXF_DMA_RB_SIZE_4K, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IWM_RFH_RXF_DMA_MIN_RB_4_8, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IWM_RFH_RXF_DMA_DROP_TOO_LARGE_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IWM_RFH_RXF_DMA_RBDCB_SIZE_512, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @iwm_write_prph(%struct.iwm_softc* %50, i32 %51, i32 %60)
  %62 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %63 = load i32, i32* @IWM_RFH_GEN_CFG, align 4
  %64 = load i32, i32* @IWM_RFH_GEN_CFG_RFH_DMA_SNOOP, align 4
  %65 = load i32, i32* @IWM_RFH_GEN_CFG_SERVICE_DMA_SNOOP, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %68 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %10
  %74 = load i32, i32* @IWM_RFH_GEN_CFG_RB_CHUNK_SIZE_64, align 4
  br label %77

75:                                               ; preds = %10
  %76 = load i32, i32* @IWM_RFH_GEN_CFG_RB_CHUNK_SIZE_128, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = or i32 %66, %78
  %80 = call i32 @iwm_write_prph(%struct.iwm_softc* %62, i32 %63, i32 %79)
  %81 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %82 = load i32, i32* @IWM_RFH_RXF_RXQ_ACTIVE, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @iwm_write_prph(%struct.iwm_softc* %81, i32 %82, i32 %83)
  %85 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %86 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %85)
  %87 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %88 = load i32, i32* @IWM_CSR_INT_COALESCING, align 4
  %89 = load i32, i32* @IWM_HOST_INT_TIMEOUT_DEF, align 4
  %90 = call i32 @IWM_WRITE_1(%struct.iwm_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %92 = load i32, i32* @IWM_RFH_Q0_FRBDCB_WIDX_TRG, align 4
  %93 = call i32 @IWM_WRITE(%struct.iwm_softc* %91, i32 %92, i32 8)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %77, %8
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_write_prph64(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_WRITE_1(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
