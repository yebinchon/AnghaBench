; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }

@IOPMU_INBOUND_MSG0_RESET = common dso_local global i32 0, align 4
@IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hptiop_reset_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_reset_adapter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hpt_iop_hba*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %5, %struct.hpt_iop_hba** %3, align 8
  %6 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %7 = load i32, i32* @IOPMU_INBOUND_MSG0_RESET, align 4
  %8 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %6, i32 %7, i32 60000)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %13 = load i32, i32* @IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, align 4
  %14 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %12, i32 %13, i32 5000)
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
