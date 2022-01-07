; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.dtsec_softc*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FM_PORT_LIODN_BASE = common dso_local global i32 0, align 4
@dtsec_fm_port_tx_exception_callback = common dso_local global i32 0, align 4
@FM_PORT_LIODN_OFFSET = common dso_local global i32 0, align 4
@FM_PORT_MEM_ID = common dso_local global i32 0, align 4
@FM_PORT_MEM_ATTR = common dso_local global i32 0, align 4
@dtsec_im_fm_port_tx_conf_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't configure FM Port TX.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't initialize FM Port TX.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"TX hw port 0x%02x initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_im_fm_port_tx_init(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 64)
  %10 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %14 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %19 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i32 %20, i32* %21, align 8
  %22 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dtsec_fm_port_tx_type(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @FM_PORT_LIODN_BASE, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @dtsec_fm_port_tx_exception_callback, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store %struct.dtsec_softc* %35, %struct.dtsec_softc** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %7, align 8
  %39 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %40 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @FM_PORT_LIODN_OFFSET, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @FM_PORT_MEM_ID, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @FM_PORT_MEM_ATTR, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @dtsec_im_fm_port_tx_conf_callback, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = call i32* @FM_PORT_Config(%struct.TYPE_7__* %6)
  %57 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %58 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %60 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %2
  %64 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %3, align 4
  br label %99

69:                                               ; preds = %2
  %70 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %71 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @FM_PORT_Init(i32* %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @E_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %79 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %83 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @FM_PORT_Free(i32* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %3, align 4
  br label %99

87:                                               ; preds = %69
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %92 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %95 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %90, %87
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %77, %63
  %100 = load i32, i32* %3, align 4
  ret i32 %100
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
