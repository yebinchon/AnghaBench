; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_start_hbe_bgrb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_start_hbe_bgrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32 }

@ACB_F_MSG_START_BGRB = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@inbound_msgaddr0 = common dso_local global i32 0, align 4
@ARCMSR_INBOUND_MESG0_START_BGRB = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"arcmsr%d: wait 'start adapter background rebulid' timeout \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_start_hbe_bgrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_start_hbe_bgrb(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load i32, i32* @ACB_F_MSG_START_BGRB, align 4
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @HBE_MessageUnit, align 4
  %9 = load i32, i32* @inbound_msgaddr0, align 4
  %10 = load i32, i32* @ARCMSR_INBOUND_MESG0_START_BGRB, align 4
  %11 = call i32 @CHIP_REG_WRITE32(i32 %8, i32 0, i32 %9, i32 %10)
  %12 = load i32, i32* @ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE, align 4
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @HBE_MessageUnit, align 4
  %18 = load i32, i32* @iobound_doorbell, align 4
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CHIP_REG_WRITE32(i32 %17, i32 0, i32 %18, i32 %21)
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %24 = call i32 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %28 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %1
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
