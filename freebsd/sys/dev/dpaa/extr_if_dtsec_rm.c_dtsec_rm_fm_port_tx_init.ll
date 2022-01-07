; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fm_port_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fm_port_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.dtsec_softc*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@FM_PORT_LIODN_BASE = common dso_local global i32 0, align 4
@dtsec_fm_port_tx_exception_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't configure FM Port TX.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't initialize FM Port TX.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"TX hw port 0x%02x initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_fm_port_tx_init(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 72)
  %10 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %14 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %19 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i32 %20, i32* %21, align 8
  %22 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dtsec_fm_port_tx_type(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @FM_PORT_LIODN_BASE, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @dtsec_fm_port_tx_exception_callback, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store %struct.dtsec_softc* %36, %struct.dtsec_softc** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %7, align 8
  %40 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %41 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %46 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %51 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = call i32* @FM_PORT_Config(%struct.TYPE_7__* %6)
  %56 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %57 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %2
  %63 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %64 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %2
  %69 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %70 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @FM_PORT_Init(i32* %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @E_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %78 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %82 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @FM_PORT_Free(i32* %83)
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %3, align 4
  br label %98

86:                                               ; preds = %68
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %91 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %94 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %76, %62
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dtsec_fm_port_tx_type(i32) #1

declare dso_local i32* @FM_PORT_Config(%struct.TYPE_7__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @FM_PORT_Init(i32*) #1

declare dso_local i32 @FM_PORT_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
