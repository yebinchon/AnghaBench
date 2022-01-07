; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_consumer = type { i64, i32 (%struct.nvme_namespace*, i8*)* }
%struct.nvme_namespace = type { i32* }
%struct.nvme_controller = type { i8**, i32, %struct.nvme_namespace* }

@NVME_MAX_CONSUMERS = common dso_local global i64 0, align 8
@nvme_consumer = common dso_local global %struct.nvme_consumer* null, align 8
@INVALID_CONSUMER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_notify_ns(%struct.nvme_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_consumer*, align 8
  %6 = alloca %struct.nvme_namespace*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 2
  %11 = load %struct.nvme_namespace*, %struct.nvme_namespace** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %11, i64 %14
  store %struct.nvme_namespace* %15, %struct.nvme_namespace** %6, align 8
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %64

21:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %61, %21
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @NVME_MAX_CONSUMERS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.nvme_consumer*, %struct.nvme_consumer** @nvme_consumer, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %27, i64 %28
  store %struct.nvme_consumer* %29, %struct.nvme_consumer** %5, align 8
  %30 = load %struct.nvme_consumer*, %struct.nvme_consumer** %5, align 8
  %31 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INVALID_CONSUMER_ID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %26
  %36 = load %struct.nvme_consumer*, %struct.nvme_consumer** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %36, i32 0, i32 1
  %38 = load i32 (%struct.nvme_namespace*, i8*)*, i32 (%struct.nvme_namespace*, i8*)** %37, align 8
  %39 = icmp ne i32 (%struct.nvme_namespace*, i8*)* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.nvme_consumer*, %struct.nvme_consumer** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %49, i32 0, i32 1
  %51 = load i32 (%struct.nvme_namespace*, i8*)*, i32 (%struct.nvme_namespace*, i8*)** %50, align 8
  %52 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 %51(%struct.nvme_namespace* %52, i8* %53)
  %55 = load %struct.nvme_namespace*, %struct.nvme_namespace** %6, align 8
  %56 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %40, %35, %26
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %22

64:                                               ; preds = %20, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
