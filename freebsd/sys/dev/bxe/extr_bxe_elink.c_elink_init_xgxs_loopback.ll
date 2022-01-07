; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_init_xgxs_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_init_xgxs_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64*, i64, i64, i32, %struct.elink_phy*, %struct.bxe_softc* }
%struct.elink_phy = type { i32, i32 (%struct.elink_phy*, %struct.elink_params.0*)* }
%struct.elink_params.0 = type opaque
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i64, i32, i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i64 0, align 8
@ELINK_SPEED_20000 = common dso_local global i64 0, align 8
@ELINK_FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@ELINK_LOOPBACK_XGXS = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@ELINK_LED_MODE_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*)* @elink_init_xgxs_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_init_xgxs_loopback(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.elink_phy*, align 8
  %7 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 5
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %5, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 4
  %13 = load %struct.elink_phy*, %struct.elink_phy** %12, align 8
  %14 = load i64, i64* @ELINK_INT_PHY, align 8
  %15 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %13, i64 %14
  store %struct.elink_phy* %15, %struct.elink_phy** %6, align 8
  %16 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %17 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @ELINK_FLOW_CTRL_NONE, align 4
  %19 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %20 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DUPLEX_FULL, align 4
  %22 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %23 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %25 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ELINK_SPEED_1000, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i64, i64* @ELINK_SPEED_1000, align 8
  %33 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %34 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %59

35:                                               ; preds = %2
  %36 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %37 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ELINK_SPEED_20000, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %45 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ELINK_FLAGS_WC_DUAL_MODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %35
  %51 = load i64, i64* @ELINK_SPEED_20000, align 8
  %52 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %53 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load i64, i64* @ELINK_SPEED_10000, align 8
  %56 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %57 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = call i64 @USES_WARPCORE(%struct.bxe_softc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %65 = call i32 @elink_xgxs_deassert(%struct.elink_params* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %68 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %69 = call i32 @elink_link_initialize(%struct.elink_params* %67, %struct.elink_vars* %68)
  %70 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %71 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ELINK_SPEED_1000, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %66
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %79 = call i64 @USES_WARPCORE(%struct.bxe_softc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %83 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %84 = call i32 @elink_umac_enable(%struct.elink_params* %82, %struct.elink_vars* %83, i32 0)
  br label %92

85:                                               ; preds = %77
  %86 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %87 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %88 = call i32 @elink_emac_program(%struct.elink_params* %86, %struct.elink_vars* %87)
  %89 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %90 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %91 = call i32 @elink_emac_enable(%struct.elink_params* %89, %struct.elink_vars* %90, i32 0)
  br label %92

92:                                               ; preds = %85, %81
  br label %106

93:                                               ; preds = %66
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %95 = call i64 @USES_WARPCORE(%struct.bxe_softc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %99 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %100 = call i32 @elink_xmac_enable(%struct.elink_params* %98, %struct.elink_vars* %99, i32 0)
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %103 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %104 = call i32 @elink_bmac_enable(%struct.elink_params* %102, %struct.elink_vars* %103, i32 0, i32 1)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %108 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ELINK_LOOPBACK_XGXS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %114 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %113, i32 0, i32 1
  %115 = load i32 (%struct.elink_phy*, %struct.elink_params.0*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*)** %114, align 8
  %116 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %117 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %118 = bitcast %struct.elink_params* %117 to %struct.elink_params.0*
  %119 = call i32 %115(%struct.elink_phy* %116, %struct.elink_params.0* %118)
  br label %158

120:                                              ; preds = %106
  %121 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %121, i64* %7, align 8
  br label %122

122:                                              ; preds = %154, %120
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %122
  %129 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %130 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %129, i32 0, i32 4
  %131 = load %struct.elink_phy*, %struct.elink_phy** %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %131, i64 %132
  %134 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %133, i32 0, i32 1
  %135 = load i32 (%struct.elink_phy*, %struct.elink_params.0*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*)** %134, align 8
  %136 = icmp ne i32 (%struct.elink_phy*, %struct.elink_params.0*)* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %128
  %138 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %139 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %138, i32 0, i32 4
  %140 = load %struct.elink_phy*, %struct.elink_phy** %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %140, i64 %141
  %143 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %142, i32 0, i32 1
  %144 = load i32 (%struct.elink_phy*, %struct.elink_params.0*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*)** %143, align 8
  %145 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %146 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %145, i32 0, i32 4
  %147 = load %struct.elink_phy*, %struct.elink_phy** %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %147, i64 %148
  %150 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %151 = bitcast %struct.elink_params* %150 to %struct.elink_params.0*
  %152 = call i32 %144(%struct.elink_phy* %149, %struct.elink_params.0* %151)
  br label %153

153:                                              ; preds = %137, %128
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %7, align 8
  br label %122

157:                                              ; preds = %122
  br label %158

158:                                              ; preds = %157, %112
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %160 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %161 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %162 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %160, %165
  %167 = call i32 @REG_WR(%struct.bxe_softc* %159, i64 %166, i32 0)
  %168 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %169 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %170 = load i32, i32* @ELINK_LED_MODE_OPER, align 4
  %171 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %172 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @elink_set_led(%struct.elink_params* %168, %struct.elink_vars* %169, i32 %170, i64 %173)
  ret void
}

declare dso_local i64 @USES_WARPCORE(%struct.bxe_softc*) #1

declare dso_local i32 @elink_xgxs_deassert(%struct.elink_params*) #1

declare dso_local i32 @elink_link_initialize(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_umac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_emac_program(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_emac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_xmac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_bmac_enable(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
