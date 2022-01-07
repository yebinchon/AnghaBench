; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.dtsec_softc*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.dtsec_softc* }

@TRUE = common dso_local global i32 0, align 4
@FM_PORT_LIODN_BASE = common dso_local global i32 0, align 4
@dtsec_fm_port_rx_exception_callback = common dso_local global i32 0, align 4
@FM_PORT_LIODN_OFFSET = common dso_local global i32 0, align 4
@FM_PORT_MEM_ID = common dso_local global i32 0, align 4
@FM_PORT_MEM_ATTR = common dso_local global i32 0, align 4
@dtsec_im_fm_port_rx_callback = common dso_local global i32 0, align 4
@dtsec_im_fm_port_rx_get_buf = common dso_local global i32 0, align 4
@dtsec_im_fm_port_rx_put_buf = common dso_local global i32 0, align 4
@FM_PORT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't configure FM Port RX.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't initialize FM Port RX.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"RX hw port 0x%02x initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_im_fm_port_rx_init(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 88)
  %11 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %15 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i32 %21, i32* %22, align 4
  %23 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dtsec_fm_port_rx_type(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @FM_PORT_LIODN_BASE, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @dtsec_fm_port_rx_exception_callback, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store %struct.dtsec_softc* %38, %struct.dtsec_softc** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %8, align 8
  %42 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %43 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @FM_PORT_LIODN_OFFSET, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @FM_PORT_MEM_ID, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @FM_PORT_MEM_ATTR, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @dtsec_im_fm_port_rx_callback, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %7, align 8
  %62 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store %struct.dtsec_softc* %62, %struct.dtsec_softc** %64, align 8
  %65 = load i32, i32* @dtsec_im_fm_port_rx_get_buf, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @dtsec_im_fm_port_rx_put_buf, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @FM_PORT_BUFFER_SIZE, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = call i32* @FM_PORT_Config(%struct.TYPE_8__* %6)
  %75 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %76 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %78 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %2
  %82 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %83 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %3, align 4
  br label %117

87:                                               ; preds = %2
  %88 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %89 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @FM_PORT_Init(i32* %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @E_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %97 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %101 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @FM_PORT_Free(i32* %102)
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %3, align 4
  br label %117

105:                                              ; preds = %87
  %106 = load i64, i64* @bootverbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %110 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %113 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %108, %105
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %95, %81
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dtsec_fm_port_rx_type(i32) #1

declare dso_local i32* @FM_PORT_Config(%struct.TYPE_8__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @FM_PORT_Init(i32*) #1

declare dso_local i32 @FM_PORT_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
