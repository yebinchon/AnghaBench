; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fm_port_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fm_port_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, %struct.dtsec_softc*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FM_PORT_LIODN_BASE = common dso_local global i32 0, align 4
@dtsec_fm_port_rx_exception_callback = common dso_local global i32 0, align 4
@DTSEC_BPOOLS_USED = common dso_local global i32 0, align 4
@FM_PORT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't configure FM Port RX.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't initialize FM Port RX.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"RX hw port 0x%02x initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_fm_port_rx_init(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 @memset(%struct.TYPE_11__* %6, i32 0, i32 80)
  %11 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %15 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dtsec_fm_port_rx_type(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 6
  store i32 %26, i32* %27, align 4
  %28 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @FM_PORT_LIODN_BASE, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @dtsec_fm_port_rx_exception_callback, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store %struct.dtsec_softc* %37, %struct.dtsec_softc** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %7, align 8
  %41 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %42 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %47 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %8, align 8
  %55 = load i32, i32* @DTSEC_BPOOLS_USED, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @FM_PORT_BUFFER_SIZE, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = call i32* @FM_PORT_Config(%struct.TYPE_11__* %6)
  %71 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %72 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %74 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %2
  %78 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %79 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %3, align 4
  br label %113

83:                                               ; preds = %2
  %84 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %85 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @FM_PORT_Init(i32* %86)
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @E_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %93 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %97 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @FM_PORT_Free(i32* %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %3, align 4
  br label %113

101:                                              ; preds = %83
  %102 = load i64, i64* @bootverbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %106 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %109 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %104, %101
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %91, %77
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dtsec_fm_port_rx_type(i32) #1

declare dso_local i32* @FM_PORT_Config(%struct.TYPE_11__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @FM_PORT_Init(i32*) #1

declare dso_local i32 @FM_PORT_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
