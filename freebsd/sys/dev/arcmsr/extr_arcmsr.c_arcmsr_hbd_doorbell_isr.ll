; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbd_doorbell_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbd_doorbell_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBD_MessageUnit = common dso_local global i32 0, align 4
@outbound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_F0_DOORBELL_CAUSE = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_IOP2DRV_DATA_WRITE_OK = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_IOP2DRV_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbd_doorbell_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbd_doorbell_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load i32, i32* @HBD_MessageUnit, align 4
  %5 = load i32, i32* @outbound_doorbell, align 4
  %6 = call i32 @CHIP_REG_READ32(i32 %4, i32 0, i32 %5)
  %7 = load i32, i32* @ARCMSR_HBDMU_F0_DOORBELL_CAUSE, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @HBD_MessageUnit, align 4
  %13 = load i32, i32* @outbound_doorbell, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @CHIP_REG_WRITE32(i32 %12, i32 0, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ARCMSR_HBDMU_F0_DOORBELL_CAUSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ARCMSR_HBDMU_IOP2DRV_DATA_WRITE_OK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %29 = call i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ARCMSR_HBDMU_IOP2DRV_DATA_READ_OK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %37 = call i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ARCMSR_HBDMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %45 = call i32 @arcmsr_hbd_message_isr(%struct.AdapterControlBlock* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @HBD_MessageUnit, align 4
  %48 = load i32, i32* @outbound_doorbell, align 4
  %49 = call i32 @CHIP_REG_READ32(i32 %47, i32 0, i32 %48)
  %50 = load i32, i32* @ARCMSR_HBDMU_F0_DOORBELL_CAUSE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* @HBD_MessageUnit, align 4
  %56 = load i32, i32* @outbound_doorbell, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @CHIP_REG_WRITE32(i32 %55, i32 0, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %46
  br label %17

60:                                               ; preds = %17
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbd_message_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
