; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_firmware_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_firmware_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IWM_FH_SRVC_CHNL = common dso_local global i32 0, align 4
@IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE = common dso_local global i32 0, align 4
@IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK = common dso_local global i32 0, align 4
@IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT = common dso_local global i32 0, align 4
@IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM = common dso_local global i32 0, align 4
@IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX = common dso_local global i32 0, align 4
@IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID = common dso_local global i32 0, align 4
@IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i32 0, align 4
@IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE = common dso_local global i32 0, align 4
@IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"iwmfw\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"fw chunk addr 0x%x len %d failed to load\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32, i32, i32)* @iwm_pcie_load_firmware_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_pcie_load_firmware_chunk(%struct.iwm_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %11 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %13 = call i32 @iwm_nic_lock(%struct.iwm_softc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %5, align 4
  br label %87

17:                                               ; preds = %4
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %19 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %20 = call i32 @IWM_FH_TCSR_CHNL_TX_CONFIG_REG(i32 %19)
  %21 = load i32, i32* @IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE, align 4
  %22 = call i32 @IWM_WRITE(%struct.iwm_softc* %18, i32 %20, i32 %21)
  %23 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %24 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %25 = call i32 @IWM_FH_SRVC_CHNL_SRAM_ADDR_REG(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @IWM_WRITE(%struct.iwm_softc* %23, i32 %25, i32 %26)
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %29 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %30 = call i32 @IWM_FH_TFDIB_CTRL0_REG(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @IWM_WRITE(%struct.iwm_softc* %28, i32 %30, i32 %33)
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %36 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %37 = call i32 @IWM_FH_TFDIB_CTRL1_REG(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @iwm_get_dma_hi_addr(i32 %38)
  %40 = load i32, i32* @IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @IWM_WRITE(%struct.iwm_softc* %35, i32 %37, i32 %43)
  %45 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %46 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %47 = call i32 @IWM_FH_TCSR_CHNL_TX_BUF_STS_REG(i32 %46)
  %48 = load i32, i32* @IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @IWM_WRITE(%struct.iwm_softc* %45, i32 %47, i32 %54)
  %56 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %57 = load i32, i32* @IWM_FH_SRVC_CHNL, align 4
  %58 = call i32 @IWM_FH_TCSR_CHNL_TX_CONFIG_REG(i32 %57)
  %59 = load i32, i32* @IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 4
  %60 = load i32, i32* @IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @IWM_WRITE(%struct.iwm_softc* %56, i32 %58, i32 %63)
  %65 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %66 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %65)
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %68 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %67, i32 0, i32 3
  %69 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %70 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %69, i32 0, i32 2
  %71 = load i32, i32* @hz, align 4
  %72 = mul nsw i32 %71, 5
  %73 = call i32 @msleep(i32* %68, i32* %70, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %75 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %17
  %79 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %80 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %78, %15
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @IWM_FH_SRVC_CHNL_SRAM_ADDR_REG(i32) #1

declare dso_local i32 @IWM_FH_TFDIB_CTRL0_REG(i32) #1

declare dso_local i32 @IWM_FH_TFDIB_CTRL1_REG(i32) #1

declare dso_local i32 @iwm_get_dma_hi_addr(i32) #1

declare dso_local i32 @IWM_FH_TCSR_CHNL_TX_BUF_STS_REG(i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
