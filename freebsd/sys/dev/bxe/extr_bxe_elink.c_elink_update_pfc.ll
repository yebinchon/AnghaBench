; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i32, i32, i32 }
%struct.elink_nig_brb_pfc_port_params = type { i32 }

@ELINK_LOOPBACK_BMAC = common dso_local global i64 0, align 8
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"About to update PFC in BMAC\0A\00", align 1
@ELINK_MAC_TYPE_XMAC = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"About to update PFC in EMAC\0A\00", align 1
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_update_pfc(%struct.elink_params* %0, %struct.elink_vars* %1, %struct.elink_nig_brb_pfc_port_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.elink_nig_brb_pfc_port_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bxe_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %6, align 8
  store %struct.elink_nig_brb_pfc_port_params* %2, %struct.elink_nig_brb_pfc_port_params** %7, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 3
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %9, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ELINK_LOOPBACK_BMAC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %21 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %28 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %29 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %36 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %41 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %42 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @elink_update_mng(%struct.elink_params* %40, i32 %43)
  %45 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %46 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %47 = load %struct.elink_nig_brb_pfc_port_params*, %struct.elink_nig_brb_pfc_port_params** %7, align 8
  %48 = call i32 @elink_update_pfc_nig(%struct.elink_params* %45, %struct.elink_vars* %46, %struct.elink_nig_brb_pfc_port_params* %47)
  %49 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %50 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %132

55:                                               ; preds = %39
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %57 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %59 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %63 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ELINK_MAC_TYPE_XMAC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %69 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %70 = call i32 @elink_update_pfc_xmac(%struct.elink_params* %68, %struct.elink_vars* %69, i32 0)
  br label %71

71:                                               ; preds = %67, %61
  br label %130

72:                                               ; preds = %55
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %74 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %75 = call i32 @REG_RD(%struct.bxe_softc* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %78 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %79 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %77, %80
  %82 = and i32 %76, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %86 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %88 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %89 = call i32 @elink_emac_enable(%struct.elink_params* %87, %struct.elink_vars* %88, i32 0)
  %90 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %132

91:                                               ; preds = %72
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %93 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %97 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @elink_update_pfc_bmac2(%struct.elink_params* %96, %struct.elink_vars* %97, i32 %98)
  br label %104

100:                                              ; preds = %91
  %101 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %102 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %103 = call i32 @elink_update_pfc_bmac1(%struct.elink_params* %101, %struct.elink_vars* %102)
  br label %104

104:                                              ; preds = %100, %95
  store i32 0, i32* %8, align 4
  %105 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %106 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %113 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111, %104
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %111
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %121 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %122 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %123 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %121, %126
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @REG_WR(%struct.bxe_softc* %120, i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %119, %71
  %131 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %84, %53
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_update_pfc_nig(%struct.elink_params*, %struct.elink_vars*, %struct.elink_nig_brb_pfc_port_params*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @elink_update_pfc_xmac(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_emac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @elink_update_pfc_bmac2(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_update_pfc_bmac1(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
