; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_initial_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_initial_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.elink_params, %struct.TYPE_2__ }
%struct.elink_params = type { i64*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_UMAC = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC = common dso_local global i32 0, align 4
@LOAD_DIAG = common dso_local global i32 0, align 4
@ELINK_LOOPBACK_XGXS = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i64 0, align 8
@LOAD_LOOPBACK_EXT = common dso_local global i32 0, align 4
@ELINK_LOOPBACK_EXT = common dso_local global i32 0, align 4
@STATS_EVENT_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_initial_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_initial_phy_init(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.elink_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = call i32 @bxe_get_link_cfg_idx(%struct.bxe_softc* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 0
  store %struct.elink_params* %22, %struct.elink_params** %8, align 8
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = call i32 @bxe_set_requested_fc(%struct.bxe_softc* %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %2
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = call i32 @CHIP_BOND_ID(%struct.bxe_softc* %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %78

42:                                               ; preds = %34, %28
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %77

59:                                               ; preds = %42
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %65 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_UMAC, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %86, %2
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %95 = call i32 @bxe_acquire_phy_lock(%struct.bxe_softc* %94)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @LOAD_DIAG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %141

99:                                               ; preds = %93
  %100 = load i32, i32* @ELINK_LOOPBACK_XGXS, align 4
  %101 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %102 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %104 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ELINK_SPEED_10000, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %99
  %113 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %114 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %112
  %124 = load i64, i64* @ELINK_SPEED_10000, align 8
  %125 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %126 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %124, i64* %130, align 8
  br label %139

131:                                              ; preds = %112
  %132 = load i64, i64* @ELINK_SPEED_1000, align 8
  %133 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %134 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64 %132, i64* %138, align 8
  br label %139

139:                                              ; preds = %131, %123
  br label %140

140:                                              ; preds = %139, %99
  br label %141

141:                                              ; preds = %140, %93
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @LOAD_LOOPBACK_EXT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @ELINK_LOOPBACK_EXT, align 4
  %147 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %148 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %151 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %150, i32 0, i32 0
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %153 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %152, i32 0, i32 1
  %154 = call i32 @elink_phy_init(%struct.elink_params* %151, %struct.TYPE_2__* %153)
  store i32 %154, i32* %5, align 4
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %156 = call i32 @bxe_release_phy_lock(%struct.bxe_softc* %155)
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %158 = call i32 @bxe_calc_fc_adv(%struct.bxe_softc* %157)
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %160 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %149
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %166 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %167 = call i32 @bxe_stats_handle(%struct.bxe_softc* %165, i32 %166)
  %168 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %169 = call i32 @bxe_link_report(%struct.bxe_softc* %168)
  br label %170

170:                                              ; preds = %164, %149
  %171 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %172 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %176 = call i32 @bxe_periodic_start(%struct.bxe_softc* %175)
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %180 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  store i64 %178, i64* %185, align 8
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @bxe_get_link_cfg_idx(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_set_requested_fc(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_BOND_ID(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @elink_phy_init(%struct.elink_params*, %struct.TYPE_2__*) #1

declare dso_local i32 @bxe_release_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_calc_fc_adv(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stats_handle(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_link_report(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_periodic_start(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
