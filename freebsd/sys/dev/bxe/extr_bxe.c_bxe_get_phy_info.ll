; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_phy_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bxe_softc = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [63 x i8] c"lane_config=0x%08x speed_cap_mask0=0x%08x link_config0=0x%08x\0A\00", align 1
@AUTO_GREEN_FORCE_ON = common dso_local global i64 0, align 8
@ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED = common dso_local global i32 0, align 4
@AUTO_GREEN_FORCE_OFF = common dso_local global i64 0, align 8
@PORT_FEAT_CFG_AUTOGREEEN_ENABLED = common dso_local global i32 0, align 4
@dev_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PORT_FEAT_CFG_EEE_POWER_MODE_MASK = common dso_local global i32 0, align 4
@PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT = common dso_local global i32 0, align 4
@PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_ADV_LPI = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_ENABLE_LPI = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_OUTPUT_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"detected media type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_get_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_get_phy_info(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i64 @SC_PORT(%struct.bxe_softc* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %22, i32 %28)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bxe_link_settings_supported(%struct.bxe_softc* %30, i32 %34)
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = call i32 @bxe_link_settings_requested(%struct.bxe_softc* %36)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTO_GREEN_FORCE_ON, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load i32, i32* @ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %78

50:                                               ; preds = %1
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AUTO_GREEN_FORCE_OFF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %77

64:                                               ; preds = %50
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @PORT_FEAT_CFG_AUTOGREEEN_ENABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* @ELINK_FEATURE_CONFIG_AUTOGREEEN_ENABLED, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %64
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_info, i32 0, i32 0), align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SHMEM_RD(%struct.bxe_softc* %79, i32 %84)
  %86 = load i32, i32* @PORT_FEAT_CFG_EEE_POWER_MODE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @PORT_FEAT_CFG_EEE_POWER_MODE_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @PORT_FEAT_CFG_EEE_POWER_MODE_DISABLED, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %78
  %94 = load i32, i32* @ELINK_EEE_MODE_ADV_LPI, align 4
  %95 = load i32, i32* @ELINK_EEE_MODE_ENABLE_LPI, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ELINK_EEE_MODE_OUTPUT_TIME, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %106

102:                                              ; preds = %78
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %93
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = call i32 @bxe_media_detect(%struct.bxe_softc* %107)
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %111 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i64 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @bxe_link_settings_supported(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_link_settings_requested(%struct.bxe_softc*) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_media_detect(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
