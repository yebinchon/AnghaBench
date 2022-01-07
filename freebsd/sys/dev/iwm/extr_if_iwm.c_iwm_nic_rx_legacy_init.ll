; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nic_rx_legacy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nic_rx_legacy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IWM_FH_MEM_RCSR_CHNL0_RBDCB_WPTR = common dso_local global i32 0, align 4
@IWM_FH_MEM_RCSR_CHNL0_FLUSH_RB_REQ = common dso_local global i32 0, align 4
@IWM_FH_RSCSR_CHNL0_RDPTR = common dso_local global i32 0, align 4
@IWM_FH_RSCSR_CHNL0_RBDCB_WPTR_REG = common dso_local global i32 0, align 4
@IWM_FH_RSCSR_CHNL0_RBDCB_BASE_REG = common dso_local global i32 0, align 4
@IWM_FH_RSCSR_CHNL0_STTS_WPTR_REG = common dso_local global i32 0, align 4
@IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG = common dso_local global i32 0, align 4
@IWM_FH_RCSR_RX_CONFIG_CHNL_EN_ENABLE_VAL = common dso_local global i32 0, align 4
@IWM_FH_RCSR_CHNL0_RX_IGNORE_RXF_EMPTY = common dso_local global i32 0, align 4
@IWM_FH_RCSR_CHNL0_RX_CONFIG_IRQ_DEST_INT_HOST_VAL = common dso_local global i32 0, align 4
@IWM_FH_RCSR_RX_CONFIG_REG_VAL_RB_SIZE_4K = common dso_local global i32 0, align 4
@IWM_RX_RB_TIMEOUT = common dso_local global i32 0, align 4
@IWM_FH_RCSR_RX_CONFIG_REG_IRQ_RBTH_POS = common dso_local global i32 0, align 4
@IWM_RX_QUEUE_SIZE_LOG = common dso_local global i32 0, align 4
@IWM_FH_RCSR_RX_CONFIG_RBDCB_SIZE_POS = common dso_local global i32 0, align 4
@IWM_CSR_INT_COALESCING = common dso_local global i32 0, align 4
@IWM_HOST_INT_TIMEOUT_DEF = common dso_local global i32 0, align 4
@IWM_HOST_INT_OPER_MODE = common dso_local global i32 0, align 4
@IWM_FH_RSCSR_CHNL0_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_nic_rx_legacy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_nic_rx_legacy_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %4 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %5 = call i32 @iwm_pcie_rx_stop(%struct.iwm_softc* %4)
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = call i32 @iwm_nic_lock(%struct.iwm_softc* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  store i32 %10, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %13 = load i32, i32* @IWM_FH_MEM_RCSR_CHNL0_RBDCB_WPTR, align 4
  %14 = call i32 @IWM_WRITE(%struct.iwm_softc* %12, i32 %13, i32 0)
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %16 = load i32, i32* @IWM_FH_MEM_RCSR_CHNL0_FLUSH_RB_REQ, align 4
  %17 = call i32 @IWM_WRITE(%struct.iwm_softc* %15, i32 %16, i32 0)
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %19 = load i32, i32* @IWM_FH_RSCSR_CHNL0_RDPTR, align 4
  %20 = call i32 @IWM_WRITE(%struct.iwm_softc* %18, i32 %19, i32 0)
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = load i32, i32* @IWM_FH_RSCSR_CHNL0_RBDCB_WPTR_REG, align 4
  %23 = call i32 @IWM_WRITE(%struct.iwm_softc* %21, i32 %22, i32 0)
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %25 = load i32, i32* @IWM_FH_RSCSR_CHNL0_RBDCB_BASE_REG, align 4
  %26 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = call i32 @IWM_WRITE(%struct.iwm_softc* %24, i32 %25, i32 %31)
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %34 = load i32, i32* @IWM_FH_RSCSR_CHNL0_STTS_WPTR_REG, align 4
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %36 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 4
  %41 = call i32 @IWM_WRITE(%struct.iwm_softc* %33, i32 %34, i32 %40)
  %42 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %43 = load i32, i32* @IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG, align 4
  %44 = load i32, i32* @IWM_FH_RCSR_RX_CONFIG_CHNL_EN_ENABLE_VAL, align 4
  %45 = load i32, i32* @IWM_FH_RCSR_CHNL0_RX_IGNORE_RXF_EMPTY, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IWM_FH_RCSR_CHNL0_RX_CONFIG_IRQ_DEST_INT_HOST_VAL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IWM_FH_RCSR_RX_CONFIG_REG_VAL_RB_SIZE_4K, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IWM_RX_RB_TIMEOUT, align 4
  %52 = load i32, i32* @IWM_FH_RCSR_RX_CONFIG_REG_IRQ_RBTH_POS, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* @IWM_RX_QUEUE_SIZE_LOG, align 4
  %56 = load i32, i32* @IWM_FH_RCSR_RX_CONFIG_RBDCB_SIZE_POS, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  %59 = call i32 @IWM_WRITE(%struct.iwm_softc* %42, i32 %43, i32 %58)
  %60 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %61 = load i32, i32* @IWM_CSR_INT_COALESCING, align 4
  %62 = load i32, i32* @IWM_HOST_INT_TIMEOUT_DEF, align 4
  %63 = call i32 @IWM_WRITE_1(%struct.iwm_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %65 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %11
  %71 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %72 = load i32, i32* @IWM_CSR_INT_COALESCING, align 4
  %73 = load i32, i32* @IWM_HOST_INT_OPER_MODE, align 4
  %74 = call i32 @IWM_SETBITS(%struct.iwm_softc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %11
  %76 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %77 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %76)
  %78 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %79 = load i32, i32* @IWM_FH_RSCSR_CHNL0_WPTR, align 4
  %80 = call i32 @IWM_WRITE(%struct.iwm_softc* %78, i32 %79, i32 8)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %9
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @iwm_pcie_rx_stop(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_WRITE_1(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_SETBITS(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
