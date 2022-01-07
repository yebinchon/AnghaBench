; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hba_postqueue_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hba_postqueue_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_queueport = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hba_postqueue_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hba_postqueue_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %12 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bus_dmamap_sync(i32 %7, i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* @HBA_MessageUnit, align 4
  %17 = load i32, i32* @outbound_queueport, align 4
  %18 = call i32 @CHIP_REG_READ32(i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TRUE, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @FALSE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %4, align 4
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %31, i32 %32, i32 %33)
  br label %15

35:                                               ; preds = %15
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
