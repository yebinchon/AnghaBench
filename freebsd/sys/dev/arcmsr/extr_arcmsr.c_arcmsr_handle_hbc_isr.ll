; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hbc_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hbc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBC_MessageUnit = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_handle_hbc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_handle_hbc_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load i32, i32* @HBC_MessageUnit, align 4
  %5 = load i32, i32* @host_int_status, align 4
  %6 = call i32 @CHIP_REG_READ32(i32 %4, i32 0, i32 %5)
  %7 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %8 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = call i32 @arcmsr_hbc_doorbell_isr(%struct.AdapterControlBlock* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = call i32 @arcmsr_hbc_postqueue_isr(%struct.AdapterControlBlock* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @HBC_MessageUnit, align 4
  %33 = load i32, i32* @host_int_status, align 4
  %34 = call i32 @CHIP_REG_READ32(i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %38 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %15, label %42

42:                                               ; preds = %13, %35
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_hbc_doorbell_isr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbc_postqueue_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
