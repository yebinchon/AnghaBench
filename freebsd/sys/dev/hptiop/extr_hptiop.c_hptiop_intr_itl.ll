; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_itl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_itl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }

@outbound_intstatus = common dso_local global i32 0, align 4
@IOPMU_OUTBOUND_INT_MSG0 = common dso_local global i32 0, align 4
@outbound_msgaddr0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hptiop: received outbound msg %x\0A\00", align 1
@IOPMU_OUTBOUND_INT_POSTQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_intr_itl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_intr_itl(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @outbound_intstatus, align 4
  %7 = call i32 @BUS_SPACE_RD4_ITL(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IOPMU_OUTBOUND_INT_MSG0, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @outbound_msgaddr0, align 4
  %14 = call i32 @BUS_SPACE_RD4_ITL(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KdPrint(i8* %17)
  %19 = load i32, i32* @outbound_intstatus, align 4
  %20 = load i32, i32* @IOPMU_OUTBOUND_INT_MSG0, align 4
  %21 = call i32 @BUS_SPACE_WRT4_ITL(i32 %19, i32 %20)
  %22 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @hptiop_os_message_callback(%struct.hpt_iop_hba* %22, i32 %23)
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IOPMU_OUTBOUND_INT_POSTQUEUE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %32 = call i32 @hptiop_drain_outbound_queue_itl(%struct.hpt_iop_hba* %31)
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @BUS_SPACE_RD4_ITL(i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @BUS_SPACE_WRT4_ITL(i32, i32) #1

declare dso_local i32 @hptiop_os_message_callback(%struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @hptiop_drain_outbound_queue_itl(%struct.hpt_iop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
