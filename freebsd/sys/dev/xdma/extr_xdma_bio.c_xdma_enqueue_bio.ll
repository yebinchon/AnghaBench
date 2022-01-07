; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_bio.c_xdma_enqueue_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_bio.c_xdma_enqueue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.bio = type { i32 }
%struct.xdma_request = type { i32, i8*, i8*, i8*, i8*, i32, %struct.bio* }

@XR_TYPE_BIO = common dso_local global i32 0, align 4
@XDMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@xr_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdma_enqueue_bio(%struct.TYPE_6__* %0, %struct.bio** %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.bio**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdma_request*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.bio** %1, %struct.bio*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = call %struct.xdma_request* @xchan_bank_get(%struct.TYPE_6__* %19)
  store %struct.xdma_request* %20, %struct.xdma_request** %14, align 8
  %21 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %22 = icmp eq %struct.xdma_request* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %66

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %27 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bio**, %struct.bio*** %9, align 8
  %29 = load %struct.bio*, %struct.bio** %28, align 8
  %30 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %31 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %30, i32 0, i32 6
  store %struct.bio* %29, %struct.bio** %31, align 8
  %32 = load i32, i32* @XR_TYPE_BIO, align 4
  %33 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %34 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %37 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %40 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @XDMA_MEM_TO_DEV, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %24
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %47 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %49 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %48, i32 0, i32 1
  store i8* null, i8** %49, align 8
  br label %56

50:                                               ; preds = %24
  %51 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %52 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %51, i32 0, i32 2
  store i8* null, i8** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %55 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = call i32 @QUEUE_IN_LOCK(%struct.TYPE_6__* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.xdma_request*, %struct.xdma_request** %14, align 8
  %62 = load i32, i32* @xr_next, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* %60, %struct.xdma_request* %61, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = call i32 @QUEUE_IN_UNLOCK(%struct.TYPE_6__* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %56, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

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
