; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_wait_msgint_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_wait_msgint_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64 }
%struct.HBB_MessageUnit = type { i32, i32 }

@ARCMSR_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_INT_CLEAR_PATTERN = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_END_OF_INTERRUPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_hbb_wait_msgint_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_hbb_wait_msgint_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %10, %struct.HBB_MessageUnit** %6, align 8
  br label %11

11:                                               ; preds = %41, %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %6, align 8
  %17 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_CHIP_REG32(i32 0, i32 %18)
  %20 = load i32, i32* @ARCMSR_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %6, align 8
  %25 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARCMSR_MESSAGE_INT_CLEAR_PATTERN, align 4
  %28 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %26, i32 %27)
  %29 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %6, align 8
  %30 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ARCMSR_DRV2IOP_END_OF_INTERRUPT, align 4
  %33 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %15
  %36 = call i32 @UDELAY(i32 10000)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %12

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = icmp slt i32 %42, 20
  br i1 %44, label %11, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @READ_CHIP_REG32(i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
