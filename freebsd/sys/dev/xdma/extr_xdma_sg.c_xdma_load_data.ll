; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xdma_load_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xdma_load_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.xdma_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bus_dma_segment = type { i32 }

@XCHAN_CAP_BUSDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.xdma_request*, %struct.bus_dma_segment*)* @xdma_load_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdma_load_data(%struct.TYPE_7__* %0, %struct.xdma_request* %1, %struct.bus_dma_segment* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.xdma_request*, align 8
  %7 = alloca %struct.bus_dma_segment*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.xdma_request* %1, %struct.xdma_request** %6, align 8
  store %struct.bus_dma_segment* %2, %struct.bus_dma_segment** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XCHAN_CAP_BUSDMA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.xdma_request*, %struct.xdma_request** %6, align 8
  %23 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %7, align 8
  %24 = call i32 @_xdma_load_data_busdma(%struct.TYPE_7__* %21, %struct.xdma_request* %22, %struct.bus_dma_segment* %23)
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load %struct.xdma_request*, %struct.xdma_request** %6, align 8
  %28 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %7, align 8
  %29 = call i32 @_xdma_load_data(%struct.TYPE_7__* %26, %struct.xdma_request* %27, %struct.bus_dma_segment* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.xdma_request*, %struct.xdma_request** %6, align 8
  %37 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.xdma_request*, %struct.xdma_request** %6, align 8
  %41 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @_xdma_load_data_busdma(%struct.TYPE_7__*, %struct.xdma_request*, %struct.bus_dma_segment*) #1

declare dso_local i32 @_xdma_load_data(%struct.TYPE_7__*, %struct.xdma_request*, %struct.bus_dma_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
