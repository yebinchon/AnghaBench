; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_wait_msgint_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_wait_msgint_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBC_MessageUnit = common dso_local global i32 0, align 4
@outbound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@outbound_doorbell_clear = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_hbc_wait_msgint_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_hbc_wait_msgint_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %1
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %6
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* @HBC_MessageUnit, align 4
  %12 = load i32, i32* @outbound_doorbell, align 4
  %13 = call i32 @CHIP_REG_READ32(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load i32, i32* @HBC_MessageUnit, align 4
  %19 = load i32, i32* @outbound_doorbell_clear, align 4
  %20 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR, align 4
  %21 = call i32 @CHIP_REG_WRITE32(i32 %18, i32 0, i32 %19, i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %10
  %24 = call i32 @UDELAY(i32 10000)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = icmp slt i32 %30, 20
  br i1 %32, label %6, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
