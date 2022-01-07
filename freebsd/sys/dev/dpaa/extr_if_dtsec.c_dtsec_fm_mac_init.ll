; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_fm_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_fm_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.dtsec_softc*, i32, i32, i32, i32, i32, i32, i32 }

@dtsec_fm_mac_mdio_event_callback = common dso_local global i32 0, align 4
@dtsec_fm_mac_exception_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't configure FM_MAC module.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't enable reset on init feature.\0A\00", align 1
@e_FM_MAC_EX_1G_RX_CTL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"couldn't disable pause frames exception.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"couldn't initialize FM_MAC module.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtsec_softc*, i32*)* @dtsec_fm_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_fm_mac_init(%struct.dtsec_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i64, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 48)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @memcpy(i32* %9, i32* %10, i32 4)
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %13 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @rman_get_bushandle(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 7
  store i32 %15, i32* %16, align 4
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %22 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @dtsec_fm_mac_mdio_event_callback, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @dtsec_fm_mac_exception_callback, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store %struct.dtsec_softc* %33, %struct.dtsec_softc** %34, align 8
  %35 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %36 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = call i32* @FM_MAC_Config(%struct.TYPE_4__* %6)
  %40 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %41 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %43 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %48 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %2
  %53 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %54 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i64 @FM_MAC_ConfigResetOnInit(i32* %55, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @E_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %63 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %67 = call i32 @dtsec_fm_mac_free(%struct.dtsec_softc* %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %3, align 4
  br label %104

69:                                               ; preds = %52
  %70 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %71 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @e_FM_MAC_EX_1G_RX_CTL, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i64 @FM_MAC_ConfigException(i32* %72, i32 %73, i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @E_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %81 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %85 = call i32 @dtsec_fm_mac_free(%struct.dtsec_softc* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %3, align 4
  br label %104

87:                                               ; preds = %69
  %88 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %89 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @FM_MAC_Init(i32* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @E_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %97 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %101 = call i32 @dtsec_fm_mac_free(%struct.dtsec_softc* %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %95, %79, %61, %46
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32* @FM_MAC_Config(%struct.TYPE_4__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @FM_MAC_ConfigResetOnInit(i32*, i32) #1

declare dso_local i32 @dtsec_fm_mac_free(%struct.dtsec_softc*) #1

declare dso_local i64 @FM_MAC_ConfigException(i32*, i32, i32) #1

declare dso_local i64 @FM_MAC_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
