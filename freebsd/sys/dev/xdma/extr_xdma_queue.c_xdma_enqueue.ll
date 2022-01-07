; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_queue.c_xdma_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_queue.c_xdma_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.xdma_request = type { i32, i32, i64, i64, i8*, i8*, i32, i32, i32*, i32*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"xdma is NULL\00", align 1
@XR_TYPE_VIRT = common dso_local global i32 0, align 4
@xr_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdma_enqueue(%struct.TYPE_6__* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.xdma_request*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %19, align 8
  %23 = load i32*, i32** %19, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = call %struct.xdma_request* @xchan_bank_get(%struct.TYPE_6__* %27)
  store %struct.xdma_request* %28, %struct.xdma_request** %18, align 8
  %29 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %30 = icmp eq %struct.xdma_request* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %72

32:                                               ; preds = %8
  %33 = load i8*, i8** %17, align 8
  %34 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %35 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %38 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %40 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %39, i32 0, i32 9
  store i32* null, i32** %40, align 8
  %41 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %42 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %44 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %47 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @XR_TYPE_VIRT, align 4
  %49 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %50 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %53 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %56 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %59 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %62 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = call i32 @QUEUE_IN_LOCK(%struct.TYPE_6__* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.xdma_request*, %struct.xdma_request** %18, align 8
  %68 = load i32, i32* @xr_next, align 4
  %69 = call i32 @TAILQ_INSERT_TAIL(i32* %66, %struct.xdma_request* %67, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = call i32 @QUEUE_IN_UNLOCK(%struct.TYPE_6__* %70)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %32, %31
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.xdma_request* @xchan_bank_get(%struct.TYPE_6__*) #1

declare dso_local i32 @QUEUE_IN_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.xdma_request*, i32) #1

declare dso_local i32 @QUEUE_IN_UNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
