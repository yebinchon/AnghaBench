; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_srb_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_srb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i32, i64, i32, i32, %union.ccb*, %struct.AdapterControlBlock* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.AdapterControlBlock = type { i32, i32, i32, i32, i32 }

@SRB_FLAG_TIMER_START = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ACB_F_CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@ARCMSR_SRB_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*, i32)* @arcmsr_srb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_srb_complete(%struct.CommandControlBlock* %0, i32 %1) #0 {
  %3 = alloca %struct.CommandControlBlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.AdapterControlBlock*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %9 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %8, i32 0, i32 5
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  store %struct.AdapterControlBlock* %10, %struct.AdapterControlBlock** %5, align 8
  %11 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %12 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %11, i32 0, i32 4
  %13 = load %union.ccb*, %union.ccb** %12, align 8
  store %union.ccb* %13, %union.ccb** %6, align 8
  %14 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %15 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SRB_FLAG_TIMER_START, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %22 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %21, i32 0, i32 3
  %23 = call i32 @callout_stop(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %union.ccb*, %union.ccb** %6, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAM_DIR_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CAM_DIR_NONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %24
  %34 = load %union.ccb*, %union.ccb** %6, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAM_DIR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CAM_DIR_IN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %43, i32* %7, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %48 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %51 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bus_dmamap_sync(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %56 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %59 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_dmamap_unload(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %46, %24
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %67 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %66, i32 0, i32 0
  %68 = call i32 @atomic_subtract_int(i32* %67, i32 1)
  %69 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %70 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACB_F_CAM_DEV_QFRZN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %65
  %76 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %77 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %80 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 10
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load i32, i32* @ACB_F_CAM_DEV_QFRZN, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %88 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %92 = load %union.ccb*, %union.ccb** %6, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %84, %75, %65
  br label %98

98:                                               ; preds = %97, %62
  %99 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %100 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ARCMSR_SRB_TIMEOUT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %106 = call i32 @arcmsr_free_srb(%struct.CommandControlBlock* %105)
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %109 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %union.ccb*, %union.ccb** %6, align 8
  %113 = call i32 @xpt_done(%union.ccb* %112)
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @arcmsr_free_srb(%struct.CommandControlBlock*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
