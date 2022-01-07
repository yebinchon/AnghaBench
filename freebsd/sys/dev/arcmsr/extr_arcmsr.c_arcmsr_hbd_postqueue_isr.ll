; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbd_postqueue_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbd_postqueue_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBD_MessageUnit0 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HBD_MessageUnit = common dso_local global i32 0, align 4
@outboundlist_interrupt_cause = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@outboundlist_read_pointer = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbd_postqueue_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbd_postqueue_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.HBD_MessageUnit0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.HBD_MessageUnit0*
  store %struct.HBD_MessageUnit0* %11, %struct.HBD_MessageUnit0** %3, align 8
  %12 = load i32, i32* @HBD_MessageUnit, align 4
  %13 = load i32, i32* @outboundlist_interrupt_cause, align 4
  %14 = call i32 @CHIP_REG_READ32(i32 %12, i32 0, i32 %13)
  %15 = load i32, i32* @ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %24 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %27 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @bus_dmamap_sync(i32 %22, i32 %25, i32 %28)
  %30 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %3, align 8
  %31 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %3, align 8
  %37 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %66, %19
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %39
  %46 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %3, align 8
  %47 = call i32 @arcmsr_get_doneq_index(%struct.HBD_MessageUnit0* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %3, align 8
  %49 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 255
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @TRUE, align 4
  br label %66

64:                                               ; preds = %45
  %65 = load i32, i32* @FALSE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 4
  %68 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @HBD_MessageUnit, align 4
  %73 = load i32, i32* @outboundlist_read_pointer, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @CHIP_REG_WRITE32(i32 %72, i32 0, i32 %73, i32 %74)
  %76 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %3, align 8
  %77 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  br label %39

82:                                               ; preds = %39
  %83 = load i32, i32* @HBD_MessageUnit, align 4
  %84 = load i32, i32* @outboundlist_interrupt_cause, align 4
  %85 = load i32, i32* @ARCMSR_HBDMU_OUTBOUND_LIST_INTERRUPT_CLEAR, align 4
  %86 = call i32 @CHIP_REG_WRITE32(i32 %83, i32 0, i32 %84, i32 %85)
  %87 = load i32, i32* @HBD_MessageUnit, align 4
  %88 = load i32, i32* @outboundlist_interrupt_cause, align 4
  %89 = call i32 @CHIP_REG_READ32(i32 %87, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %82, %18
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @arcmsr_get_doneq_index(%struct.HBD_MessageUnit0*) #1

declare dso_local i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock*, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
