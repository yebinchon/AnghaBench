; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_flush_hbe_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_flush_hbe_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBE_MessageUnit = common dso_local global i32 0, align 4
@inbound_msgaddr0 = common dso_local global i32 0, align 4
@ARCMSR_INBOUND_MESG0_FLUSH_CACHE = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_flush_hbe_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_flush_hbe_cache(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 30, i32* %3, align 4
  %4 = load i32, i32* @HBE_MessageUnit, align 4
  %5 = load i32, i32* @inbound_msgaddr0, align 4
  %6 = load i32, i32* @ARCMSR_INBOUND_MESG0_FLUSH_CACHE, align 4
  %7 = call i32 @CHIP_REG_WRITE32(i32 %4, i32 0, i32 %5, i32 %6)
  %8 = load i32, i32* @ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE, align 4
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @HBE_MessageUnit, align 4
  %14 = load i32, i32* @iobound_doorbell, align 4
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CHIP_REG_WRITE32(i32 %13, i32 0, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %28, %1
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %21 = call i64 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i64 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
