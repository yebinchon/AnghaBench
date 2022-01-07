; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bmac_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i64 0, align 8
@NIG_REG_XGXS_LANE_SEL_P0 = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@ELINK_MAC_TYPE_BMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i32, i32)* @elink_bmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_bmac_enable(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bxe_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 2
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %18, align 8
  store %struct.bxe_softc* %19, %struct.bxe_softc** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %24 = load i64, i64* @GRCBASE_MISC, align 8
  %25 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @REG_WR(%struct.bxe_softc* %23, i64 %26, i32 %29)
  %31 = call i32 @DELAY(i32 1000)
  br label %32

32:                                               ; preds = %22, %4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %34 = load i64, i64* @GRCBASE_MISC, align 8
  %35 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @REG_WR(%struct.bxe_softc* %33, i64 %36, i32 %39)
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %42 = load i64, i64* @NIG_REG_BMAC0_REGS_OUT_EN, align 8
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @REG_WR(%struct.bxe_softc* %41, i64 %46, i32 1)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %49 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %53 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @elink_bmac2_enable(%struct.elink_params* %52, %struct.elink_vars* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %32
  %57 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %58 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @elink_bmac1_enable(%struct.elink_params* %57, %struct.elink_vars* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %63 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = call i32 @REG_WR(%struct.bxe_softc* %62, i64 %67, i32 1)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %70 = load i64, i64* @NIG_REG_XGXS_LANE_SEL_P0, align 8
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @REG_WR(%struct.bxe_softc* %69, i64 %74, i32 0)
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %77 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = call i32 @REG_WR(%struct.bxe_softc* %76, i64 %81, i32 0)
  store i32 0, i32* %12, align 4
  %83 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %84 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %61
  %90 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %91 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89, %61
  store i32 1, i32* %12, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %99 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @REG_WR(%struct.bxe_softc* %98, i64 %103, i32 %104)
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %107 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %107, %110
  %112 = call i32 @REG_WR(%struct.bxe_softc* %106, i64 %111, i32 0)
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %114 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @REG_WR(%struct.bxe_softc* %113, i64 %118, i32 0)
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %121 = load i64, i64* @NIG_REG_EMAC0_PAUSE_OUT_EN, align 8
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = call i32 @REG_WR(%struct.bxe_softc* %120, i64 %125, i32 0)
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %128 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 %129, 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = call i32 @REG_WR(%struct.bxe_softc* %127, i64 %132, i32 1)
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  %135 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = call i32 @REG_WR(%struct.bxe_softc* %134, i64 %139, i32 1)
  %141 = load i32, i32* @ELINK_MAC_TYPE_BMAC, align 4
  %142 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %143 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @elink_bmac2_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_bmac1_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
