; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_os_cmddone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_os_cmddone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, %union.ccb* }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"<8>os_cmddone(%p, %d)\00", align 1
@hpt_timeout = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_DEV_NOT_THERE = common dso_local global i8* null, align 8
@CAM_BUSY = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i8* null, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @os_cmddone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_cmddone(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %12 = load %union.ccb*, %union.ccb** %11, align 8
  store %union.ccb* %12, %union.ccb** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KdPrint(i8* %18)
  %20 = load i32, i32* @hpt_timeout, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load %union.ccb*, %union.ccb** %4, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_10__*
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @untimeout(i32 %20, %struct.TYPE_14__* %21, i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %60 [
    i32 128, label %30
    i32 133, label %35
    i32 132, label %40
    i32 131, label %45
    i32 129, label %50
    i32 130, label %55
  ]

30:                                               ; preds = %1
  %31 = load i8*, i8** @CAM_REQ_CMP, align 8
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  br label %65

35:                                               ; preds = %1
  %36 = load i8*, i8** @CAM_DEV_NOT_THERE, align 8
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_10__*
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %65

40:                                               ; preds = %1
  %41 = load i8*, i8** @CAM_BUSY, align 8
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %65

45:                                               ; preds = %1
  %46 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_10__*
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %65

50:                                               ; preds = %1
  %51 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %52 = load %union.ccb*, %union.ccb** %4, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_10__*
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %65

55:                                               ; preds = %1
  %56 = load i8*, i8** @CAM_BUSY, align 8
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_10__*
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  br label %65

60:                                               ; preds = %1
  %61 = load i8*, i8** @CAM_SCSI_STATUS_ERROR, align 8
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_10__*
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %55, %50, %45, %40, %35, %30
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %81 = call i32 @bus_dmamap_sync(i32 %76, i32 %79, i32 %80)
  br label %100

82:                                               ; preds = %65
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %98 = call i32 @bus_dmamap_sync(i32 %93, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %82
  br label %100

100:                                              ; preds = %99, %71
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @bus_dmamap_unload(i32 %105, i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = call i32 @cmdext_put(%struct.TYPE_13__* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = call i32 @ldm_free_cmds(%struct.TYPE_14__* %112)
  %114 = load %union.ccb*, %union.ccb** %4, align 8
  %115 = call i32 @xpt_done(%union.ccb* %114)
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @untimeout(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @cmdext_put(%struct.TYPE_13__*) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_14__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
