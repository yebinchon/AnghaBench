; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_disable_allintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_disable_allintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i64 }
%struct.HBB_MessageUnit = type { i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_intmask = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_ALL_INTMASKENABLE = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@host_int_mask = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_ALL_INTMASKENABLE = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@pcief0_int_enable = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_ALL_INT_DISABLE = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_ALL_INTMASKENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_disable_allintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_disable_allintr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %62 [
    i32 132, label %8
    i32 131, label %18
    i32 130, label %34
    i32 129, label %44
    i32 128, label %52
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @HBA_MessageUnit, align 4
  %10 = load i32, i32* @outbound_intmask, align 4
  %11 = call i32 @CHIP_REG_READ32(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @HBA_MessageUnit, align 4
  %13 = load i32, i32* @outbound_intmask, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ARCMSR_MU_OUTBOUND_ALL_INTMASKENABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @CHIP_REG_WRITE32(i32 %12, i32 0, i32 %13, i32 %16)
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %22, %struct.HBB_MessageUnit** %4, align 8
  %23 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %24 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @READ_CHIP_REG32(i32 0, i32 %25)
  %27 = load i32, i32* @ARCMSR_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %31 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %32, i32 0)
  br label %62

34:                                               ; preds = %1
  %35 = load i32, i32* @HBC_MessageUnit, align 4
  %36 = load i32, i32* @host_int_mask, align 4
  %37 = call i32 @CHIP_REG_READ32(i32 %35, i32 0, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @HBC_MessageUnit, align 4
  %39 = load i32, i32* @host_int_mask, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ARCMSR_HBCMU_ALL_INTMASKENABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @CHIP_REG_WRITE32(i32 %38, i32 0, i32 %39, i32 %42)
  br label %62

44:                                               ; preds = %1
  %45 = load i32, i32* @HBD_MessageUnit, align 4
  %46 = load i32, i32* @pcief0_int_enable, align 4
  %47 = call i32 @CHIP_REG_READ32(i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @HBD_MessageUnit, align 4
  %49 = load i32, i32* @pcief0_int_enable, align 4
  %50 = load i32, i32* @ARCMSR_HBDMU_ALL_INT_DISABLE, align 4
  %51 = call i32 @CHIP_REG_WRITE32(i32 %48, i32 0, i32 %49, i32 %50)
  br label %62

52:                                               ; preds = %1
  %53 = load i32, i32* @HBC_MessageUnit, align 4
  %54 = load i32, i32* @host_int_mask, align 4
  %55 = call i32 @CHIP_REG_READ32(i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @HBE_MessageUnit, align 4
  %57 = load i32, i32* @host_int_mask, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ARCMSR_HBEMU_ALL_INTMASKENABLE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @CHIP_REG_WRITE32(i32 %56, i32 0, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %1, %52, %44, %34, %18, %8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @READ_CHIP_REG32(i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
