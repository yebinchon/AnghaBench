; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xchan_bufs_free_reserved.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xchan_bufs_free_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.xdma_request* }
%struct.xdma_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @xchan_bufs_free_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchan_bufs_free_reserved(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.xdma_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %67, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %70

12:                                               ; preds = %6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %15, i64 %17
  store %struct.xdma_request* %18, %struct.xdma_request** %3, align 8
  %19 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %20 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %24 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %12
  %29 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %30 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @pmap_kremove_device(i64 %32, i64 %33)
  %35 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %36 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @kva_free(i64 %38, i64 %39)
  %41 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %42 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %28, %12
  %45 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %46 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %55 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @vmem_free(i32 %53, i64 %57, i64 %58)
  %60 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %61 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %50, %44
  %64 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %65 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %6

70:                                               ; preds = %6
  ret void
}

declare dso_local i32 @pmap_kremove_device(i64, i64) #1

declare dso_local i32 @kva_free(i64, i64) #1

declare dso_local i32 @vmem_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
