; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_postqueue_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_hbb_postqueue_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32, i32* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARCMSR_MAX_HBB_POSTQUEUE = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbb_postqueue_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbb_postqueue_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.HBB_MessageUnit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %10, %struct.HBB_MessageUnit** %3, align 8
  %11 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %12 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @bus_dmamap_sync(i32 %13, i32 %16, i32 %19)
  %21 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %22 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %56, %1
  %25 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %26 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %24
  %34 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %35 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @ARCMSR_MAX_HBB_POSTQUEUE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %3, align 8
  %47 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @TRUE, align 4
  br label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @FALSE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %6, align 4
  %58 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %58, i32 %59, i32 %60)
  br label %24

62:                                               ; preds = %24
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
