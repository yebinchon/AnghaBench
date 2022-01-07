; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_flush_vdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_flush_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i64, i32, %struct.TYPE_20__*, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"flusing dev %p\00", align 1
@CMD_TYPE_FLUSH = common dso_local global i32 0, align 4
@hpt_flush_done = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hptfls\00", align 1
@HPT_OSM_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"flush result %d\00", align 1
@RETURN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_20__*)* @hpt_flush_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt_flush_vdev(i32 %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = bitcast %struct.TYPE_20__* %10 to i8*
  %12 = call i32 @KdPrint(i8* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @hpt_assert_vbus_locked(i32 %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @mIsArray(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @max(i32 %36, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %51

47:                                               ; preds = %20, %2
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.TYPE_21__* @ldm_alloc_cmds(i32 %54, i32 %55)
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %109

60:                                               ; preds = %51
  %61 = load i32, i32* @CMD_TYPE_FLUSH, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %69, align 8
  %70 = load i32, i32* @hpt_flush_done, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %8, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  store i32* %8, i32** %74, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = call i32 @ldm_queue_cmd(%struct.TYPE_21__* %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = load i32, i32* @PPAUSE, align 4
  %84 = load i32, i32* @HPT_OSM_TIMEOUT, align 4
  %85 = call i64 @hpt_sleep(i32 %81, %struct.TYPE_21__* %82, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ldm_reset_vbus(i32 %90)
  br label %80

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @KdPrint(i8* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RETURN_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  store i32 -1, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %93
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = call i32 @ldm_free_cmds(%struct.TYPE_21__* %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %59
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hpt_assert_vbus_locked(i32) #1

declare dso_local i64 @mIsArray(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.TYPE_21__* @ldm_alloc_cmds(i32, i32) #1

declare dso_local i32 @ldm_queue_cmd(%struct.TYPE_21__*) #1

declare dso_local i64 @hpt_sleep(i32, %struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @ldm_reset_vbus(i32) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
