; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_postqueue_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbc_postqueue_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@outbound_queueport_low = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARCMSR_HBC_ISR_THROTTLING_LEVEL = common dso_local global i32 0, align 4
@inbound_doorbell = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbc_postqueue_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbc_postqueue_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %13 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @bus_dmamap_sync(i32 %8, i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32, i32* @HBC_MessageUnit, align 4
  %18 = load i32, i32* @outbound_queueport_low, align 4
  %19 = call i32 @CHIP_REG_READ32(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %56

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TRUE, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @FALSE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %5, align 4
  %34 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ARCMSR_HBC_ISR_THROTTLING_LEVEL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @HBC_MessageUnit, align 4
  %45 = load i32, i32* @inbound_doorbell, align 4
  %46 = load i32, i32* @ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING, align 4
  %47 = call i32 @CHIP_REG_WRITE32(i32 %44, i32 0, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @HBC_MessageUnit, align 4
  %51 = load i32, i32* @host_int_status, align 4
  %52 = call i32 @CHIP_REG_READ32(i32 %50, i32 0, i32 %51)
  %53 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %16, label %56

56:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock*, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
