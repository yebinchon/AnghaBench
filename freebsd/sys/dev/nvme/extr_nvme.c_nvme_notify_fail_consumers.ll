; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_fail_consumers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_fail_consumers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_consumer = type { i64, i32 (i8*)* }
%struct.nvme_controller = type { i32**, i32 }

@NVME_MAX_CONSUMERS = common dso_local global i64 0, align 8
@nvme_consumer = common dso_local global %struct.nvme_consumer* null, align 8
@INVALID_CONSUMER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_notify_fail_consumers(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca %struct.nvme_consumer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %55

11:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NVME_MAX_CONSUMERS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load %struct.nvme_consumer*, %struct.nvme_consumer** @nvme_consumer, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %17, i64 %18
  store %struct.nvme_consumer* %19, %struct.nvme_consumer** %3, align 8
  %20 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_CONSUMER_ID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %40, i32 0, i32 1
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = icmp ne i32 (i8*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %45, i32 0, i32 1
  %47 = load i32 (i8*)*, i32 (i8*)** %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 %47(i8* %48)
  br label %50

50:                                               ; preds = %44, %34
  br label %51

51:                                               ; preds = %50, %25, %16
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %12

55:                                               ; preds = %10, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
