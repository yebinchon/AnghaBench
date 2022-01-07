; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_wait_msgint_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_wait_msgint_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBE_MessageUnit = common dso_local global i32 0, align 4
@iobound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_hbe_wait_msgint_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_hbe_wait_msgint_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i32, i32* @HBE_MessageUnit, align 4
  %13 = load i32, i32* @iobound_doorbell, align 4
  %14 = call i32 @CHIP_REG_READ32(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = load i32, i32* @ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load i32, i32* @HBE_MessageUnit, align 4
  %25 = load i32, i32* @host_int_status, align 4
  %26 = call i32 @CHIP_REG_WRITE32(i32 %24, i32 0, i32 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %11
  %32 = call i32 @UDELAY(i32 10000)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %8

36:                                               ; preds = %8
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = icmp slt i32 %38, 20
  br i1 %40, label %7, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
