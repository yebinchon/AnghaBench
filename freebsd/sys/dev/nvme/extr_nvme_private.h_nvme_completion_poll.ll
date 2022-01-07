; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_completion_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_completion_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion_poll_status = type { i32 }

@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nvme\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"NVME polled command failed to complete within 1s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_completion_poll_status*)* @nvme_completion_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_completion_poll(%struct.nvme_completion_poll_status* %0) #0 {
  %2 = alloca %struct.nvme_completion_poll_status*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_completion_poll_status* %0, %struct.nvme_completion_poll_status** %2, align 8
  %4 = load i32, i32* @hz, align 4
  %5 = mul nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.nvme_completion_poll_status*, %struct.nvme_completion_poll_status** %2, align 8
  %8 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %7, i32 0, i32 0
  %9 = call i32 @atomic_load_acq_int(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i1 [ false, %6 ], [ %14, %11 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %6

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
