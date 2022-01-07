; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_os_cmddone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_os_cmddone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, %union.ccb* }
%struct.TYPE_11__ = type { i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"os_cmddone(%p, %d)\00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_DEV_NOT_THERE = common dso_local global i8* null, align 8
@CAM_BUSY = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i8* null, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @os_cmddone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_cmddone(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %union.ccb*, %union.ccb** %11, align 8
  store %union.ccb* %12, %union.ccb** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KdPrint(i8* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %56 [
    i32 128, label %26
    i32 133, label %31
    i32 132, label %36
    i32 131, label %41
    i32 129, label %46
    i32 130, label %51
  ]

26:                                               ; preds = %1
  %27 = load i8*, i8** @CAM_REQ_CMP, align 8
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %61

31:                                               ; preds = %1
  %32 = load i8*, i8** @CAM_DEV_NOT_THERE, align 8
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  br label %61

36:                                               ; preds = %1
  %37 = load i8*, i8** @CAM_BUSY, align 8
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  br label %61

41:                                               ; preds = %1
  %42 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %61

46:                                               ; preds = %1
  %47 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %48 = load %union.ccb*, %union.ccb** %4, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %61

51:                                               ; preds = %1
  %52 = load i8*, i8** @CAM_BUSY, align 8
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %61

56:                                               ; preds = %1
  %57 = load i8*, i8** @CAM_SCSI_STATUS_ERROR, align 8
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %51, %46, %41, %36, %31, %26
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %77 = call i32 @bus_dmamap_sync(i32 %72, i32 %75, i32 %76)
  br label %96

78:                                               ; preds = %61
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %84, %78
  br label %96

96:                                               ; preds = %95, %67
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bus_dmamap_unload(i32 %101, i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = call i32 @cmdext_put(%struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = call i32 @ldm_free_cmds(%struct.TYPE_13__* %108)
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = call i32 @xpt_done(%union.ccb* %110)
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @cmdext_put(%struct.TYPE_12__*) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_13__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
