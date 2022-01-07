; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_start_hbb_bgrb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_start_hbb_bgrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32 }

@ACB_F_MSG_START_BGRB = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_START_BGRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"arcmsr%d: wait 'start adapter background rebulid' timeout \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_start_hbb_bgrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_start_hbb_bgrb(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %7, %struct.HBB_MessageUnit** %3, align 8
  %8 = load i32, i32* @ACB_F_MSG_START_BGRB, align 4
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %14 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ARCMSR_MESSAGE_START_BGRB, align 4
  %17 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %15, i32 %16)
  %18 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %19 = call i32 @arcmsr_hbb_wait_msgint_ready(%struct.AdapterControlBlock* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %23 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_hbb_wait_msgint_ready(%struct.AdapterControlBlock*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
