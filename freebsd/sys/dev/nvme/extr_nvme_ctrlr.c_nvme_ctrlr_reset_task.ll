; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_reset_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_reset_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"resetting controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nvmereset\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nvme_ctrlr_reset_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_reset_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nvme_controller*
  store %struct.nvme_controller* %8, %struct.nvme_controller** %5, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %10 = call i32 @nvme_printf(%struct.nvme_controller* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %12 = call i32 @nvme_ctrlr_hw_reset(%struct.nvme_controller* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @hz, align 4
  %14 = sdiv i32 %13, 10
  %15 = call i32 @pause(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %20 = call i32 @nvme_ctrlr_start(%struct.nvme_controller* %19, i32 1)
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %23 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %25, i32 0, i32 0
  %27 = call i32 @atomic_cmpset_32(i32* %26, i32 1, i32 0)
  ret void
}

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_ctrlr_hw_reset(%struct.nvme_controller*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @nvme_ctrlr_start(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_ctrlr_fail(%struct.nvme_controller*) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
