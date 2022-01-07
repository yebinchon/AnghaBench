; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_doorbell_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_doorbell_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBE_MessageUnit = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbe_doorbell_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbe_doorbell_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load i32, i32* @HBE_MessageUnit, align 4
  %6 = load i32, i32* @iobound_doorbell, align 4
  %7 = call i32 @CHIP_REG_READ32(i32 %5, i32 0, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @HBE_MessageUnit, align 4
  %9 = load i32, i32* @host_int_status, align 4
  %10 = call i32 @CHIP_REG_WRITE32(i32 %8, i32 0, i32 %9, i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = call i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = call i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %38 = call i32 @arcmsr_hbe_message_isr(%struct.AdapterControlBlock* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %42 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbe_message_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
