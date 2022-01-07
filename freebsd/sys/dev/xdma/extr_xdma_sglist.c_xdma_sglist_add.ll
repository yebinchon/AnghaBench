; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sglist.c_xdma_sglist_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sglist.c_xdma_sglist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_sglist = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.bus_dma_segment = type { i32, i32 }
%struct.xdma_request = type { i64, i32, i32, i32, i32 }

@XDMA_MEM_TO_DEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdma_sglist_add(%struct.xdma_sglist* %0, %struct.bus_dma_segment* %1, i32 %2, %struct.xdma_request* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdma_sglist*, align 8
  %7 = alloca %struct.bus_dma_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xdma_request*, align 8
  %10 = alloca i32, align 4
  store %struct.xdma_sglist* %0, %struct.xdma_sglist** %6, align 8
  store %struct.bus_dma_segment* %1, %struct.bus_dma_segment** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.xdma_request* %3, %struct.xdma_request** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %124

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %111, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %114

19:                                               ; preds = %15
  %20 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %21 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %23, i64 %25
  %27 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %26, i32 0, i32 7
  store i32 %22, i32* %27, align 8
  %28 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %29 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %31, i64 %33
  %35 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %34, i32 0, i32 6
  store i32 %30, i32* %35, align 4
  %36 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %37 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %19
  %42 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %42, i64 %44
  %46 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %48, i64 %50
  %52 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %51, i32 0, i32 5
  store i32 %47, i32* %52, align 8
  %53 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %54 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %56, i64 %58
  %60 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %59, i32 0, i32 4
  store i32 %55, i32* %60, align 4
  br label %81

61:                                               ; preds = %19
  %62 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %63 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %65, i64 %67
  %69 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %68, i32 0, i32 5
  store i32 %64, i32* %69, align 8
  %70 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %70, i64 %72
  %74 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %76, i64 %78
  %80 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %79, i32 0, i32 4
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %61, %41
  %82 = load %struct.bus_dma_segment*, %struct.bus_dma_segment** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %82, i64 %84
  %86 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %88, i64 %90
  %92 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %91, i32 0, i32 3
  store i32 %87, i32* %92, align 8
  %93 = load %struct.xdma_request*, %struct.xdma_request** %9, align 8
  %94 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %96, i64 %98
  %100 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %99, i32 0, i32 0
  store i64 %95, i64* %100, align 8
  %101 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %101, i64 %103
  %105 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %104, i32 0, i32 1
  store i32 0, i32* %105, align 8
  %106 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %106, i64 %108
  %110 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %109, i32 0, i32 2
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %81
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %15

114:                                              ; preds = %15
  %115 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %116 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %115, i64 0
  %117 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %116, i32 0, i32 1
  store i32 1, i32* %117, align 8
  %118 = load %struct.xdma_sglist*, %struct.xdma_sglist** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %118, i64 %121
  %123 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %122, i32 0, i32 2
  store i32 1, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %114, %13
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
