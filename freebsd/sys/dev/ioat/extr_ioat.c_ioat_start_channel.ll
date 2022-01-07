; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_start_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_start_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i32, i32 }
%struct.ioat_dma_hw_descriptor = type { i32, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ioat_descriptor = type { %struct.bus_dmadesc }
%struct.bus_dmadesc = type { i32*, i32* }
%struct.TYPE_8__ = type { %struct.ioat_dma_hw_descriptor }

@IOAT_OP_COPY = common dso_local global i32 0, align 4
@IOAT_CHANERR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"could not start channel: status = %#jx error = %b\0A\00", align 1
@IOAT_CHANERR_STR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_softc*)* @ioat_start_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_start_channel(%struct.ioat_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioat_softc*, align 8
  %4 = alloca %struct.ioat_dma_hw_descriptor*, align 8
  %5 = alloca %struct.ioat_descriptor*, align 8
  %6 = alloca %struct.bus_dmadesc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ioat_softc* %0, %struct.ioat_softc** %3, align 8
  %10 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %10, i32 0, i32 0
  %12 = call i32 @ioat_acquire(i32* %11)
  %13 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %14 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ioat_descriptor* @ioat_get_ring_entry(%struct.ioat_softc* %13, i32 %16)
  store %struct.ioat_descriptor* %17, %struct.ioat_descriptor** %5, align 8
  %18 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %19 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_8__* @ioat_get_descriptor(%struct.ioat_softc* %18, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.ioat_dma_hw_descriptor* %23, %struct.ioat_dma_hw_descriptor** %4, align 8
  %24 = load %struct.ioat_descriptor*, %struct.ioat_descriptor** %5, align 8
  %25 = getelementptr inbounds %struct.ioat_descriptor, %struct.ioat_descriptor* %24, i32 0, i32 0
  store %struct.bus_dmadesc* %25, %struct.bus_dmadesc** %6, align 8
  %26 = load %struct.bus_dmadesc*, %struct.bus_dmadesc** %6, align 8
  %27 = getelementptr inbounds %struct.bus_dmadesc, %struct.bus_dmadesc* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.bus_dmadesc*, %struct.bus_dmadesc** %6, align 8
  %29 = getelementptr inbounds %struct.bus_dmadesc, %struct.bus_dmadesc* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %31 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @IOAT_OP_COPY, align 4
  %34 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %35 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %42, i32 0, i32 0
  store i32 8, i32* %43, align 8
  %44 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %45 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.ioat_dma_hw_descriptor*, %struct.ioat_dma_hw_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.ioat_dma_hw_descriptor, %struct.ioat_dma_hw_descriptor* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %53 = call i32 @ioat_submit_single(%struct.ioat_softc* %52)
  %54 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %54, i32 0, i32 0
  %56 = call i32 @ioat_release(i32* %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %69, %1
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 100
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = call i32 @DELAY(i32 1)
  %62 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %63 = call i64 @ioat_get_chansts(%struct.ioat_softc* %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @is_ioat_idle(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %83

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %74 = load i32, i32* @IOAT_CHANERR_OFFSET, align 4
  %75 = call i64 @ioat_read_4(%struct.ioat_softc* %73, i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @IOAT_CHANERR_STR, align 4
  %81 = call i32 @ioat_log_message(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %80)
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %72, %67
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ioat_acquire(i32*) #1

declare dso_local %struct.ioat_descriptor* @ioat_get_ring_entry(%struct.ioat_softc*, i32) #1

declare dso_local %struct.TYPE_8__* @ioat_get_descriptor(%struct.ioat_softc*, i32) #1

declare dso_local i32 @ioat_submit_single(%struct.ioat_softc*) #1

declare dso_local i32 @ioat_release(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @ioat_get_chansts(%struct.ioat_softc*) #1

declare dso_local i64 @is_ioat_idle(i64) #1

declare dso_local i64 @ioat_read_4(%struct.ioat_softc*, i32) #1

declare dso_local i32 @ioat_log_message(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
