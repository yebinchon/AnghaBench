; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_message_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_message_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64 }
%struct.HBB_MessageUnit = type { i32 }

@ARCMSR_MESSAGE_INT_CLEAR_PATTERN = common dso_local global i32 0, align 4
@HBB_RWBUFFER = common dso_local global i32 0, align 4
@msgcode_rwbuffer = common dso_local global i32* null, align 8
@ARCMSR_SIGNATURE_GET_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbb_message_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbb_message_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %8, %struct.HBB_MessageUnit** %4, align 8
  %9 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %10 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ARCMSR_MESSAGE_INT_CLEAR_PATTERN, align 4
  %13 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %11, i32 %12)
  %14 = load i32, i32* @HBB_RWBUFFER, align 4
  %15 = load i32*, i32** @msgcode_rwbuffer, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @CHIP_REG_READ32(i32 %14, i32 1, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ARCMSR_SIGNATURE_GET_CONFIG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %24 = call i32 @arcmsr_dr_handle(%struct.AdapterControlBlock* %23)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i64 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_dr_handle(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
