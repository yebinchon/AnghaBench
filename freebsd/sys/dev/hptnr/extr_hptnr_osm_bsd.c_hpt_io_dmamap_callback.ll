; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_io_dmamap_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_io_dmamap_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__, %struct.TYPE_15__*, i32 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"busdma error\00", align 1
@os_max_sg_descriptors = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HPT_OSM_TIMEOUT = common dso_local global i32 0, align 4
@hpt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_14__*, i32, i32)* @hpt_io_dmamap_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_io_dmamap_callback(i8* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @HPT_ASSERT(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @os_max_sg_descriptors, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @HPT_ASSERT(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 1
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %11, align 8
  br label %41

70:                                               ; preds = %41
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 -1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %89 = call i32 @bus_dmamap_sync(i32 %84, i32 %87, i32 %88)
  br label %108

90:                                               ; preds = %70
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %106 = call i32 @bus_dmamap_sync(i32 %101, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %90
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %32
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* @HPT_OSM_TIMEOUT, align 4
  %113 = load i32, i32* @hpt_timeout, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = call i32 @callout_reset(i32* %111, i32 %112, i32 %113, %struct.TYPE_17__* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = call i32 @ldm_queue_cmd(%struct.TYPE_17__* %116)
  ret void
}

declare dso_local i32 @HPT_ASSERT(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ldm_queue_cmd(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
