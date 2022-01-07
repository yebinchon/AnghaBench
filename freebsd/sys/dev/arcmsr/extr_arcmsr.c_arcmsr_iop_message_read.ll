; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_message_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_message_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@inbound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_INBOUND_DRIVER_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_DATA_READ_OK = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_DRV2IOP_DATA_READ_OK = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_DRV2IOP_DATA_OUT_READ = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_DRV2IOP_DATA_READ_OK = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_iop_message_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_iop_message_read(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %44 [
    i32 132, label %7
    i32 131, label %12
    i32 130, label %22
    i32 129, label %27
    i32 128, label %32
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @HBA_MessageUnit, align 4
  %9 = load i32, i32* @inbound_doorbell, align 4
  %10 = load i32, i32* @ARCMSR_INBOUND_DRIVER_DATA_READ_OK, align 4
  %11 = call i32 @CHIP_REG_WRITE32(i32 %8, i32 0, i32 %9, i32 %10)
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %16, %struct.HBB_MessageUnit** %3, align 8
  %17 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %18 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ARCMSR_DRV2IOP_DATA_READ_OK, align 4
  %21 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %19, i32 %20)
  br label %44

22:                                               ; preds = %1
  %23 = load i32, i32* @HBC_MessageUnit, align 4
  %24 = load i32, i32* @inbound_doorbell, align 4
  %25 = load i32, i32* @ARCMSR_HBCMU_DRV2IOP_DATA_READ_OK, align 4
  %26 = call i32 @CHIP_REG_WRITE32(i32 %23, i32 0, i32 %24, i32 %25)
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* @HBD_MessageUnit, align 4
  %29 = load i32, i32* @inbound_doorbell, align 4
  %30 = load i32, i32* @ARCMSR_HBDMU_DRV2IOP_DATA_OUT_READ, align 4
  %31 = call i32 @CHIP_REG_WRITE32(i32 %28, i32 0, i32 %29, i32 %30)
  br label %44

32:                                               ; preds = %1
  %33 = load i32, i32* @ARCMSR_HBEMU_DRV2IOP_DATA_READ_OK, align 4
  %34 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %35 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @HBE_MessageUnit, align 4
  %39 = load i32, i32* @iobound_doorbell, align 4
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CHIP_REG_WRITE32(i32 %38, i32 0, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %1, %32, %27, %22, %12, %7
  ret void
}

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
