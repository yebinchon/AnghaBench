; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_devmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_devmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@inbound_msgaddr0 = common dso_local global i32 0, align 4
@ARCMSR_INBOUND_MESG0_GET_CONFIG = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_GET_CONFIG = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@inbound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@ACB_F_SCSISTOPADAPTER = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @arcmsr_polling_devmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_devmap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.HBB_MessageUnit*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %6, %struct.AdapterControlBlock** %3, align 8
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %55 [
    i32 132, label %10
    i32 131, label %15
    i32 130, label %25
    i32 129, label %34
    i32 128, label %39
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HBA_MessageUnit, align 4
  %12 = load i32, i32* @inbound_msgaddr0, align 4
  %13 = load i32, i32* @ARCMSR_INBOUND_MESG0_GET_CONFIG, align 4
  %14 = call i32 @CHIP_REG_WRITE32(i32 %11, i32 0, i32 %12, i32 %13)
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %19, %struct.HBB_MessageUnit** %4, align 8
  %20 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %21 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ARCMSR_MESSAGE_GET_CONFIG, align 4
  %24 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %22, i32 %23)
  br label %55

25:                                               ; preds = %1
  %26 = load i32, i32* @HBC_MessageUnit, align 4
  %27 = load i32, i32* @inbound_msgaddr0, align 4
  %28 = load i32, i32* @ARCMSR_INBOUND_MESG0_GET_CONFIG, align 4
  %29 = call i32 @CHIP_REG_WRITE32(i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load i32, i32* @HBC_MessageUnit, align 4
  %31 = load i32, i32* @inbound_doorbell, align 4
  %32 = load i32, i32* @ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE, align 4
  %33 = call i32 @CHIP_REG_WRITE32(i32 %30, i32 0, i32 %31, i32 %32)
  br label %55

34:                                               ; preds = %1
  %35 = load i32, i32* @HBD_MessageUnit, align 4
  %36 = load i32, i32* @inbound_msgaddr0, align 4
  %37 = load i32, i32* @ARCMSR_INBOUND_MESG0_GET_CONFIG, align 4
  %38 = call i32 @CHIP_REG_WRITE32(i32 %35, i32 0, i32 %36, i32 %37)
  br label %55

39:                                               ; preds = %1
  %40 = load i32, i32* @HBE_MessageUnit, align 4
  %41 = load i32, i32* @inbound_msgaddr0, align 4
  %42 = load i32, i32* @ARCMSR_INBOUND_MESG0_GET_CONFIG, align 4
  %43 = call i32 @CHIP_REG_WRITE32(i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load i32, i32* @ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE, align 4
  %45 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %46 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @HBE_MessageUnit, align 4
  %50 = load i32, i32* @iobound_doorbell, align 4
  %51 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %52 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CHIP_REG_WRITE32(i32 %49, i32 0, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %1, %39, %34, %25, %15, %10
  %56 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %57 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ACB_F_SCSISTOPADAPTER, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %64 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %63, i32 0, i32 2
  %65 = load i32, i32* @hz, align 4
  %66 = mul nsw i32 5, %65
  %67 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %68 = call i32 @callout_reset(i32* %64, i32 %66, void (i8*)* @arcmsr_polling_devmap, %struct.AdapterControlBlock* %67)
  br label %69

69:                                               ; preds = %62, %55
  ret void
}

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
