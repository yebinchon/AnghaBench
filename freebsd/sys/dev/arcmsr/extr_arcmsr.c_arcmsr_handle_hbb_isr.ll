; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hbb_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hbb_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i64 }
%struct.HBB_MessageUnit = type { i32, i32 }

@ARCMSR_DRV2IOP_END_OF_INTERRUPT = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DATA_WRITE_OK = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DATA_READ_OK = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_CDB_DONE = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_handle_hbb_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_handle_hbb_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %8, %struct.HBB_MessageUnit** %4, align 8
  %9 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %10 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_CHIP_REG32(i32 0, i32 %11)
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %22 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %23, i32 %25)
  %27 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %28 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_CHIP_REG32(i32 0, i32 %29)
  %31 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %32 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ARCMSR_DRV2IOP_END_OF_INTERRUPT, align 4
  %35 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ARCMSR_IOP2DRV_DATA_WRITE_OK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %42 = call i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock* %41)
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ARCMSR_IOP2DRV_DATA_READ_OK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %50 = call i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ARCMSR_IOP2DRV_CDB_DONE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %58 = call i32 @arcmsr_hbb_postqueue_isr(%struct.AdapterControlBlock* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ARCMSR_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %66 = call i32 @arcmsr_hbb_message_isr(%struct.AdapterControlBlock* %65)
  br label %67

67:                                               ; preds = %19, %64, %59
  ret void
}

declare dso_local i32 @READ_CHIP_REG32(i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbb_postqueue_isr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbb_message_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
