; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_enable_allintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_enable_allintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32 }

@ARCMSR_MU_OUTBOUND_POSTQUEUE_INTMASKENABLE = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_DOORBELL_INTMASKENABLE = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_MESSAGE0_INTMASKENABLE = common dso_local global i32 0, align 4
@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_intmask = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DATA_WRITE_OK = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_CDB_DONE = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_UTILITY_A_ISR_MASK = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR_MASK = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR_MASK = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@host_int_mask = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_ALL_INT_ENABLE = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@pcief0_int_enable = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, i32)* @arcmsr_enable_allintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_enable_allintr(%struct.AdapterControlBlock* %0, i32 %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %107 [
    i32 132, label %10
    i32 131, label %30
    i32 130, label %55
    i32 129, label %75
    i32 128, label %89
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @ARCMSR_MU_OUTBOUND_POSTQUEUE_INTMASKENABLE, align 4
  %12 = load i32, i32* @ARCMSR_MU_OUTBOUND_DOORBELL_INTMASKENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ARCMSR_MU_OUTBOUND_MESSAGE0_INTMASKENABLE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @HBA_MessageUnit, align 4
  %18 = load i32, i32* @outbound_intmask, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @CHIP_REG_WRITE32(i32 %17, i32 0, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %26, 255
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %107

30:                                               ; preds = %2
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %34, %struct.HBB_MessageUnit** %6, align 8
  %35 = load i32, i32* @ARCMSR_IOP2DRV_DATA_WRITE_OK, align 4
  %36 = load i32, i32* @ARCMSR_IOP2DRV_DATA_READ_OK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ARCMSR_IOP2DRV_CDB_DONE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ARCMSR_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %6, align 8
  %43 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %44, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %51, 15
  %53 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %54 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %107

55:                                               ; preds = %2
  %56 = load i32, i32* @ARCMSR_HBCMU_UTILITY_A_ISR_MASK, align 4
  %57 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_DOORBELL_ISR_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR_MASK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @HBC_MessageUnit, align 4
  %63 = load i32, i32* @host_int_mask, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @CHIP_REG_WRITE32(i32 %62, i32 0, i32 %63, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %71, 15
  %73 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %74 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %107

75:                                               ; preds = %2
  %76 = load i32, i32* @ARCMSR_HBDMU_ALL_INT_ENABLE, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @HBD_MessageUnit, align 4
  %78 = load i32, i32* @pcief0_int_enable, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @CHIP_REG_WRITE32(i32 %77, i32 0, i32 %78, i32 %81)
  %83 = load i32, i32* @HBD_MessageUnit, align 4
  %84 = load i32, i32* @pcief0_int_enable, align 4
  %85 = call i32 @CHIP_REG_READ32(i32 %83, i32 0, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %88 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %107

89:                                               ; preds = %2
  %90 = load i32, i32* @ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR, align 4
  %91 = load i32, i32* @ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @HBE_MessageUnit, align 4
  %95 = load i32, i32* @host_int_mask, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @CHIP_REG_WRITE32(i32 %94, i32 0, i32 %95, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %103, 15
  %105 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %106 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %2, %89, %75, %55, %30, %10
  ret void
}

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
