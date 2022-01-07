; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }

@outbound_doorbell = common dso_local global i32 0, align 4
@MVIOP_MU_OUTBOUND_INT_MSG = common dso_local global i32 0, align 4
@outbound_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hptiop: received outbound msg %x\0A\00", align 1
@MVIOP_MU_OUTBOUND_INT_POSTQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_intr_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_intr_mv(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @outbound_doorbell, align 4
  %7 = call i32 @BUS_SPACE_RD4_MV0(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @outbound_doorbell, align 4
  %12 = load i32, i32* %3, align 4
  %13 = xor i32 %12, -1
  %14 = call i32 @BUS_SPACE_WRT4_MV0(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MVIOP_MU_OUTBOUND_INT_MSG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* @outbound_msg, align 4
  %22 = call i32 @BUS_SPACE_RD4_MV2(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KdPrint(i8* %25)
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @hptiop_os_message_callback(%struct.hpt_iop_hba* %27, i32 %28)
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %15
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MVIOP_MU_OUTBOUND_INT_POSTQUEUE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %37 = call i32 @hptiop_drain_outbound_queue_mv(%struct.hpt_iop_hba* %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @BUS_SPACE_RD4_MV0(i32) #1

declare dso_local i32 @BUS_SPACE_WRT4_MV0(i32, i32) #1

declare dso_local i32 @BUS_SPACE_RD4_MV2(i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hptiop_os_message_callback(%struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @hptiop_drain_outbound_queue_mv(%struct.hpt_iop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
