; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_postqueue_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbe_postqueue_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@reply_post_producer_index = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@reply_post_consumer_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbe_postqueue_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbe_postqueue_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %13 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @bus_dmamap_sync(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %65, %1
  %20 = load i32, i32* @HBE_MessageUnit, align 4
  %21 = load i32, i32* @reply_post_producer_index, align 4
  %22 = call i32 @CHIP_REG_READ32(i32 %20, i32 0, i32 %21)
  %23 = and i32 %22, 65535
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  %27 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %28 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %36 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* @TRUE, align 4
  br label %50

48:                                               ; preds = %26
  %49 = load i32, i32* @FALSE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %3, align 4
  %52 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %52, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %61 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %50
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %69 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @HBE_MessageUnit, align 4
  %71 = load i32, i32* @reply_post_consumer_index, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @CHIP_REG_WRITE32(i32 %70, i32 0, i32 %71, i32 %72)
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
