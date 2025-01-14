; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_wait_ready_itl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_wait_ready_itl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }

@inbound_queue = common dso_local global i32 0, align 4
@IOPMU_QUEUE_EMPTY = common dso_local global i32 0, align 4
@outbound_queue = common dso_local global i32 0, align 4
@outbound_intstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, i32)* @hptiop_wait_ready_itl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_wait_ready_itl(%struct.hpt_iop_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* @inbound_queue, align 4
  %14 = call i32 @BUS_SPACE_RD4_ITL(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IOPMU_QUEUE_EMPTY, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  %20 = call i32 @DELAY(i32 1000)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %18, %8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IOPMU_QUEUE_EMPTY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @outbound_queue, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BUS_SPACE_WRT4_ITL(i32 %29, i32 %30)
  %32 = load i32, i32* @outbound_intstatus, align 4
  %33 = call i32 @BUS_SPACE_RD4_ITL(i32 %32)
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BUS_SPACE_RD4_ITL(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BUS_SPACE_WRT4_ITL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
