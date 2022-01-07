; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xdma_dmamap_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xdma_dmamap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.seg_load_request = type { i32, i32, %struct.bus_dma_segment* }
%struct.bus_dma_segment = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @xdma_dmamap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdma_dmamap_cb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seg_load_request*, align 8
  %10 = alloca %struct.bus_dma_segment*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.seg_load_request*
  store %struct.seg_load_request* %13, %struct.seg_load_request** %9, align 8
  %14 = load %struct.seg_load_request*, %struct.seg_load_request** %9, align 8
  %15 = getelementptr inbounds %struct.seg_load_request, %struct.seg_load_request* %14, i32 0, i32 2
  %16 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %15, align 8
  store %struct.bus_dma_segment* %16, %struct.bus_dma_segment** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.seg_load_request*, %struct.seg_load_request** %9, align 8
  %22 = getelementptr inbounds %struct.seg_load_request, %struct.seg_load_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %57

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.seg_load_request*, %struct.seg_load_request** %9, align 8
  %26 = getelementptr inbounds %struct.seg_load_request, %struct.seg_load_request* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %54, %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %38, i64 %40
  %42 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %49, i64 %51
  %53 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %27

57:                                               ; preds = %19, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
