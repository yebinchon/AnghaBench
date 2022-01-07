; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_DATA_BYTE_SWAP = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_DATA_WORD_SWAP = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_CNTL_BYTE_SWAP = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_CNTL_WORD_SWAP = common dso_local global i32 0, align 4
@DMA_READ_CHANS = common dso_local global i32 0, align 4
@DMA_WRITE_CHANS = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY = common dso_local global i32 0, align 4
@BCE_PCIX_FLAG = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG_PCI_FAST_CLK_CMP = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5706 = common dso_local global i64 0, align 8
@BCE_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@BCE_DMA_CONFIG_CNTL_PING_PONG_DMA = common dso_local global i32 0, align 4
@BCE_DMA_CONFIG = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_SET_BITS = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE = common dso_local global i32 0, align 4
@BCE_MFW_ENABLE_FLAG = common dso_local global i32 0, align 4
@BCE_RPM_MGMT_PKT_CTRL = common dso_local global i32 0, align 4
@BCE_RPM_MGMT_PKT_CTRL_MGMT_EN = common dso_local global i32 0, align 4
@BCE_MQ_CONFIG = common dso_local global i32 0, align 4
@BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE = common dso_local global i32 0, align 4
@BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256 = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BCE_MQ_CONFIG_BIN_MQ_MODE = common dso_local global i32 0, align 4
@BCE_CHIP_ID_5709_A1 = common dso_local global i64 0, align 8
@BCE_MQ_CONFIG_HALT_DIS = common dso_local global i32 0, align 4
@MAX_CID_CNT = common dso_local global i32 0, align 4
@MB_KERNEL_CTX_SIZE = common dso_local global i32 0, align 4
@BCE_MQ_KNL_BYP_WIND_START = common dso_local global i32 0, align 4
@BCE_MQ_KNL_WIND_END = common dso_local global i32 0, align 4
@BCM_PAGE_BITS = common dso_local global i32 0, align 4
@BCE_RV2P_CONFIG = common dso_local global i32 0, align 4
@BCE_TBDR_CONFIG = common dso_local global i32 0, align 4
@BCE_TBDR_CONFIG_PAGE_SIZE = common dso_local global i32 0, align 4
@BCE_RXP_PM_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*)* @bce_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_chipinit(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %6 = call i32 @DBENTER(i32 %5)
  %7 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %8 = call i32 @bce_disable_intr(%struct.bce_softc* %7)
  %9 = load i32, i32* @BCE_DMA_CONFIG_DATA_BYTE_SWAP, align 4
  %10 = load i32, i32* @BCE_DMA_CONFIG_DATA_WORD_SWAP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BCE_DMA_CONFIG_CNTL_BYTE_SWAP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BCE_DMA_CONFIG_CNTL_WORD_SWAP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DMA_READ_CHANS, align 4
  %17 = shl i32 %16, 12
  %18 = or i32 %15, %17
  %19 = load i32, i32* @DMA_WRITE_CHANS, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %18, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY, align 4
  %23 = or i32 2097152, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BCE_PCIX_FLAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 133
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @BCE_DMA_CONFIG_PCI_FAST_CLK_CMP, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %32, %1
  %42 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %43 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %42)
  %44 = load i64, i64* @BCE_CHIP_NUM_5706, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %48 = call i64 @BCE_CHIP_ID(%struct.bce_softc* %47)
  %49 = load i64, i64* @BCE_CHIP_ID_5706_A0, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BCE_PCIX_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @BCE_DMA_CONFIG_CNTL_PING_PONG_DMA, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %51, %46, %41
  %63 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %64 = load i32, i32* @BCE_DMA_CONFIG, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @REG_WR(%struct.bce_softc* %63, i32 %64, i32 %65)
  %67 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %68 = load i32, i32* @BCE_MISC_ENABLE_SET_BITS, align 4
  %69 = load i32, i32* @BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE, align 4
  %70 = load i32, i32* @BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @REG_WR(%struct.bce_softc* %67, i32 %68, i32 %73)
  %75 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %76 = call i32 @bce_init_ctx(%struct.bce_softc* %75)
  store i32 %76, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %175

79:                                               ; preds = %62
  %80 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %81 = call i32 @bce_init_cpus(%struct.bce_softc* %80)
  %82 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BCE_MFW_ENABLE_FLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %90 = load i32, i32* @BCE_RPM_MGMT_PKT_CTRL, align 4
  %91 = call i32 @REG_RD(%struct.bce_softc* %89, i32 %90)
  %92 = load i32, i32* @BCE_RPM_MGMT_PKT_CTRL_MGMT_EN, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %3, align 4
  %94 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %95 = load i32, i32* @BCE_RPM_MGMT_PKT_CTRL, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @REG_WR(%struct.bce_softc* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %79
  %99 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %100 = call i32 @bce_init_nvram(%struct.bce_softc* %99)
  store i32 %100, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %175

103:                                              ; preds = %98
  %104 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %105 = load i32, i32* @BCE_MQ_CONFIG, align 4
  %106 = call i32 @REG_RD(%struct.bce_softc* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  %114 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %115 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %114)
  %116 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %103
  %119 = load i32, i32* @BCE_MQ_CONFIG_BIN_MQ_MODE, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %123 = call i64 @BCE_CHIP_ID(%struct.bce_softc* %122)
  %124 = load i64, i64* @BCE_CHIP_ID_5709_A1, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* @BCE_MQ_CONFIG_HALT_DIS, align 4
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %130, %103
  %132 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %133 = load i32, i32* @BCE_MQ_CONFIG, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @REG_WR(%struct.bce_softc* %132, i32 %133, i32 %134)
  %136 = load i32, i32* @MAX_CID_CNT, align 4
  %137 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 65536, %138
  store i32 %139, i32* %3, align 4
  %140 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %141 = load i32, i32* @BCE_MQ_KNL_BYP_WIND_START, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @REG_WR(%struct.bce_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %145 = load i32, i32* @BCE_MQ_KNL_WIND_END, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @REG_WR(%struct.bce_softc* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @BCM_PAGE_BITS, align 4
  %149 = sub nsw i32 %148, 8
  %150 = shl i32 %149, 24
  store i32 %150, i32* %3, align 4
  %151 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %152 = load i32, i32* @BCE_RV2P_CONFIG, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @REG_WR(%struct.bce_softc* %151, i32 %152, i32 %153)
  %155 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %156 = load i32, i32* @BCE_TBDR_CONFIG, align 4
  %157 = call i32 @REG_RD(%struct.bce_softc* %155, i32 %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* @BCE_TBDR_CONFIG_PAGE_SIZE, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %3, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* @BCM_PAGE_BITS, align 4
  %163 = sub nsw i32 %162, 8
  %164 = shl i32 %163, 24
  %165 = or i32 %164, 64
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  %168 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %169 = load i32, i32* @BCE_TBDR_CONFIG, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @REG_WR(%struct.bce_softc* %168, i32 %169, i32 %170)
  %172 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %173 = load i32, i32* @BCE_RXP_PM_CTRL, align 4
  %174 = call i32 @REG_WR_IND(%struct.bce_softc* %172, i32 %173, i32 0)
  br label %175

175:                                              ; preds = %131, %102, %78
  %176 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %177 = call i32 @DBEXIT(i32 %176)
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bce_disable_intr(%struct.bce_softc*) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i64 @BCE_CHIP_ID(%struct.bce_softc*) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @bce_init_ctx(%struct.bce_softc*) #1

declare dso_local i32 @bce_init_cpus(%struct.bce_softc*) #1

declare dso_local i32 @REG_RD(%struct.bce_softc*, i32) #1

declare dso_local i32 @bce_init_nvram(%struct.bce_softc*) #1

declare dso_local i32 @REG_WR_IND(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
