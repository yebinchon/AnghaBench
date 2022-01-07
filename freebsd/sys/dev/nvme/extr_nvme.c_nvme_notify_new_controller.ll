; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_new_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_new_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.nvme_controller = type { i32 }

@NVME_MAX_CONSUMERS = common dso_local global i32 0, align 4
@nvme_consumer = common dso_local global %struct.TYPE_3__* null, align 8
@INVALID_CONSUMER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_notify_new_controller(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NVME_MAX_CONSUMERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nvme_consumer, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INVALID_CONSUMER_ID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nvme_consumer, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %23 = call i32 @nvme_notify(%struct.TYPE_3__* %21, %struct.nvme_controller* %22)
  br label %24

24:                                               ; preds = %17, %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  ret void
}

declare dso_local i32 @nvme_notify(%struct.TYPE_3__*, %struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
