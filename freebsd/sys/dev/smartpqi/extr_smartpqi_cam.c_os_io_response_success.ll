; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_io_response_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_io_response_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"IN rcb = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rcb is null\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"csio is null\00", align 1
@REQUEST_SUCCESS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_io_response_success(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.ccb_scsiio*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %4)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %3, align 8
  %16 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %17 = icmp eq %struct.ccb_scsiio* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32, i32* @REQUEST_SUCCESS, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CAM_REQ_CMP, align 4
  %25 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %26 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %32 = call i32 @smartpqi_fix_ld_inquiry(i32 %30, %struct.ccb_scsiio* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = call i32 @pqi_release_camq(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = call i32 @pqi_unmap_request(%struct.TYPE_9__* %35)
  %37 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %38 = bitcast %struct.ccb_scsiio* %37 to %union.ccb*
  %39 = call i32 @xpt_done(%union.ccb* %38)
  %40 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_IO(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @smartpqi_fix_ld_inquiry(i32, %struct.ccb_scsiio*) #1

declare dso_local i32 @pqi_release_camq(%struct.TYPE_9__*) #1

declare dso_local i32 @pqi_unmap_request(%struct.TYPE_9__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
