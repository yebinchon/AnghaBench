; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_drain_outbound_queue_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_drain_outbound_queue_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }

@MVIOP_MU_QUEUE_ADDR_HOST_BIT = common dso_local global i32 0, align 4
@MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpt_iop_hba*)* @hptiop_drain_outbound_queue_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_drain_outbound_queue_mv(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %6 = call i32 @hptiop_mv_outbound_read(%struct.hpt_iop_hba* %5)
  store i32 %6, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MVIOP_MU_QUEUE_ADDR_HOST_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @hptiop_request_callback_mv(%struct.hpt_iop_hba* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hptiop_mv_outbound_read(%struct.hpt_iop_hba*) #1

declare dso_local i32 @hptiop_request_callback_mv(%struct.hpt_iop_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
