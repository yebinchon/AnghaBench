; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_stop_hbe_bgrb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_stop_hbe_bgrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32 }

@ACB_F_MSG_START_BGRB = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@inbound_msgaddr0 = common dso_local global i32 0, align 4
@ARCMSR_INBOUND_MESG0_STOP_BGRB = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"arcmsr%d: wait 'stop adapter background rebulid' timeout \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_stop_hbe_bgrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_stop_hbe_bgrb(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load i32, i32* @ACB_F_MSG_START_BGRB, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @HBE_MessageUnit, align 4
  %10 = load i32, i32* @inbound_msgaddr0, align 4
  %11 = load i32, i32* @ARCMSR_INBOUND_MESG0_STOP_BGRB, align 4
  %12 = call i32 @CHIP_REG_WRITE32(i32 %9, i32 0, i32 %10, i32 %11)
  %13 = load i32, i32* @ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE, align 4
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @HBE_MessageUnit, align 4
  %19 = load i32, i32* @iobound_doorbell, align 4
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CHIP_REG_WRITE32(i32 %18, i32 0, i32 %19, i32 %22)
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %25 = call i32 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
