; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqisrc_scsi_abort_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqisrc_scsi_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i64 }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@SOP_TASK_MANAGEMENT_FUNCTION_ABORT_TASK = common dso_local global i32 0, align 4
@REQUEST_SUCCESS = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"OUT rval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %union.ccb*)* @pqisrc_scsi_abort_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_scsi_abort_task(%struct.TYPE_13__* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_11__*
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %21 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = call i64 @pqisrc_get_tag(i32* %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %32
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @SOP_TASK_MANAGEMENT_FUNCTION_ABORT_TASK, align 4
  %47 = call i32 @pqisrc_send_tmf(%struct.TYPE_13__* %40, i32 %43, %struct.TYPE_12__* %44, i64 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @REQUEST_SUCCESS, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %60 = load %union.ccb*, %union.ccb** %4, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_11__*
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @pqisrc_put_tag(i32* %66, i64 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @pqisrc_put_tag(i32* %70, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i64 @pqisrc_get_tag(i32*) #1

declare dso_local i32 @pqisrc_send_tmf(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @pqisrc_put_tag(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
