; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setup_data_and_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setup_data_and_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ccb_scsiio = type { %struct.ccb_hdr, i32 }
%struct.ccb_hdr = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@SYM_DMA_READ = common dso_local global i32 0, align 4
@SYM_DMA_WRITE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@HS_WAIT = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.ccb_scsiio*, %struct.TYPE_9__*)* @sym_setup_data_and_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_setup_data_and_start(%struct.TYPE_8__* %0, %struct.ccb_scsiio* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @SYM_LOCK_ASSERT(i32 %10)
  %12 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %13 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %12, i32 0, i32 0
  store %struct.ccb_hdr* %13, %struct.ccb_hdr** %7, align 8
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %15 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CAM_DIR_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CAM_DIR_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call i32 @sym_execute_ccb(%struct.TYPE_9__* %31, i32* null, i32 0, i32 0)
  br label %72

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @CAM_DIR_IN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @SYM_DMA_READ, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SYM_DMA_WRITE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %52 = bitcast %struct.ccb_scsiio* %51 to %union.ccb*
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32 @bus_dmamap_load_ccb(i32 %47, i32 %50, %union.ccb* %52, i32 (%struct.TYPE_9__*, i32*, i32, i32)* @sym_execute_ccb, %struct.TYPE_9__* %53, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EINPROGRESS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %41
  %59 = load i32, i32* @HS_WAIT, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @xpt_freeze_simq(i32 %64, i32 1)
  %66 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %67 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %68 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %30, %58, %41
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @sym_execute_ccb(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32 (%struct.TYPE_9__*, i32*, i32, i32)*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
