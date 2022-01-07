; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.axidma_fdt_data* }
%struct.axidma_fdt_data = type { i64 }
%struct.axidma_channel = type { i32, i32, i64, i64, i64, %struct.axidma_softc*, %struct.xdma_channel* }
%struct.axidma_softc = type { %struct.axidma_channel*, i32 }

@XCHAN_CAP_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: busdma operation is not implemented.\00", align 1
@XCHAN_CAP_BOUNCE = common dso_local global i32 0, align 4
@AXIDMA_DESCS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @axidma_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axidma_channel_alloc(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.axidma_fdt_data*, align 8
  %8 = alloca %struct.axidma_channel*, align 8
  %9 = alloca %struct.axidma_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.axidma_softc* @device_get_softc(i32 %10)
  store %struct.axidma_softc* %11, %struct.axidma_softc** %9, align 8
  %12 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %13 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XCHAN_CAP_BUSDMA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.axidma_softc*, %struct.axidma_softc** %9, align 8
  %20 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %25 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %6, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.axidma_fdt_data*, %struct.axidma_fdt_data** %28, align 8
  store %struct.axidma_fdt_data* %29, %struct.axidma_fdt_data** %7, align 8
  %30 = load %struct.axidma_softc*, %struct.axidma_softc** %9, align 8
  %31 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %30, i32 0, i32 0
  %32 = load %struct.axidma_channel*, %struct.axidma_channel** %31, align 8
  %33 = load %struct.axidma_fdt_data*, %struct.axidma_fdt_data** %7, align 8
  %34 = getelementptr inbounds %struct.axidma_fdt_data, %struct.axidma_fdt_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %32, i64 %35
  store %struct.axidma_channel* %36, %struct.axidma_channel** %8, align 8
  %37 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %38 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %23
  %42 = load %struct.axidma_softc*, %struct.axidma_softc** %9, align 8
  %43 = load %struct.axidma_fdt_data*, %struct.axidma_fdt_data** %7, align 8
  %44 = getelementptr inbounds %struct.axidma_fdt_data, %struct.axidma_fdt_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @axidma_reset(%struct.axidma_softc* %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %77

49:                                               ; preds = %41
  %50 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %51 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %52 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %51, i32 0, i32 6
  store %struct.xdma_channel* %50, %struct.xdma_channel** %52, align 8
  %53 = load i32, i32* @XCHAN_CAP_BOUNCE, align 4
  %54 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %55 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %59 = bitcast %struct.axidma_channel* %58 to i8*
  %60 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %61 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.axidma_softc*, %struct.axidma_softc** %9, align 8
  %63 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %64 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %63, i32 0, i32 5
  store %struct.axidma_softc* %62, %struct.axidma_softc** %64, align 8
  %65 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %66 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %68 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %70 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %72 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @AXIDMA_DESCS_NUM, align 4
  %74 = load %struct.axidma_channel*, %struct.axidma_channel** %8, align 8
  %75 = getelementptr inbounds %struct.axidma_channel, %struct.axidma_channel* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %49, %48, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.axidma_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @axidma_reset(%struct.axidma_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
