; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_poll(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %4 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %4, i32 0, i32 2
  %6 = call i32 @nvme_qpair_process_completions(%struct.TYPE_2__* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %30 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = call i32 @nvme_qpair_process_completions(%struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %28, %18, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %7

40:                                               ; preds = %7
  ret void
}

declare dso_local i32 @nvme_qpair_process_completions(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
