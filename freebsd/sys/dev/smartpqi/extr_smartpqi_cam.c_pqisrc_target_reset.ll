; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqisrc_target_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqisrc_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__*** }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bad target t%d\0A\00", align 1
@SOP_TASK_MANAGEMENT_LUN_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"OUT rval = %d\0A\00", align 1
@REQUEST_SUCCESS = common dso_local global i32 0, align 4
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %union.ccb*)* @pqisrc_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_target_reset(%struct.TYPE_11__* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %13 = load %union.ccb*, %union.ccb** %5, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_9__*
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %12, i64 %16
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %19 = load %union.ccb*, %union.ccb** %5, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %8, align 8
  %25 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %25, i32* %9, align 4
  %26 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %union.ccb*, %union.ccb** %5, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DBG_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i32 -1, i32* %3, align 4
  br label %81

35:                                               ; preds = %2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i64 @pqisrc_get_tag(i32* %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i32, i32* @SOP_TASK_MANAGEMENT_LUN_RESET, align 4
  %53 = call i32 @pqisrc_send_tmf(%struct.TYPE_11__* %49, %struct.TYPE_12__* %50, %struct.TYPE_10__* %51, i32 0, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %35
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pqisrc_put_tag(i32* %65, i64 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @REQUEST_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  br label %79

77:                                               ; preds = %61
  %78 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @DBG_ERR(i8*, i64) #1

declare dso_local i64 @pqisrc_get_tag(i32*) #1

declare dso_local i32 @pqisrc_send_tmf(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @pqisrc_put_tag(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
