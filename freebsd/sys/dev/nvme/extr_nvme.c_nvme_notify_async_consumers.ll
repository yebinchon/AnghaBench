; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_async_consumers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_async_consumers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_consumer = type { i64, i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)* }
%struct.nvme_completion.0 = type opaque
%struct.nvme_controller = type { i8** }
%struct.nvme_completion = type { i32 }

@NVME_MAX_CONSUMERS = common dso_local global i64 0, align 8
@nvme_consumer = common dso_local global %struct.nvme_consumer* null, align 8
@INVALID_CONSUMER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_notify_async_consumers(%struct.nvme_controller* %0, %struct.nvme_completion* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.nvme_controller*, align 8
  %7 = alloca %struct.nvme_completion*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nvme_consumer*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %6, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %52, %5
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* @NVME_MAX_CONSUMERS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.nvme_consumer*, %struct.nvme_consumer** @nvme_consumer, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %19, i64 %20
  store %struct.nvme_consumer* %21, %struct.nvme_consumer** %11, align 8
  %22 = load %struct.nvme_consumer*, %struct.nvme_consumer** %11, align 8
  %23 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INVALID_CONSUMER_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load %struct.nvme_consumer*, %struct.nvme_consumer** %11, align 8
  %29 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %28, i32 0, i32 1
  %30 = load i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)*, i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)** %29, align 8
  %31 = icmp ne i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %6, align 8
  %34 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.nvme_consumer*, %struct.nvme_consumer** %11, align 8
  %42 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %41, i32 0, i32 1
  %43 = load i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)*, i32 (i8*, %struct.nvme_completion.0*, i64, i8*, i64)** %42, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.nvme_completion*, %struct.nvme_completion** %7, align 8
  %46 = bitcast %struct.nvme_completion* %45 to %struct.nvme_completion.0*
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 %43(i8* %44, %struct.nvme_completion.0* %46, i64 %47, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %40, %32, %27, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %14

55:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
