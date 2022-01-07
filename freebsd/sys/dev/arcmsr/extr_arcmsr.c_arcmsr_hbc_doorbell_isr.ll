; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_doorbell_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_doorbell_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBC_MessageUnit = common dso_local global i32 0, align 4
@outbound_doorbell = common dso_local global i32 0, align 4
@outbound_doorbell_clear = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_DATA_WRITE_OK = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbc_doorbell_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbc_doorbell_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load i32, i32* @HBC_MessageUnit, align 4
  %5 = load i32, i32* @outbound_doorbell, align 4
  %6 = call i32 @CHIP_REG_READ32(i32 %4, i32 0, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @HBC_MessageUnit, align 4
  %8 = load i32, i32* @outbound_doorbell_clear, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @CHIP_REG_WRITE32(i32 %7, i32 0, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_DATA_WRITE_OK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = call i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_DATA_READ_OK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %25 = call i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %33 = call i32 @arcmsr_hbc_message_isr(%struct.AdapterControlBlock* %32)
  br label %34

34:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbc_message_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
