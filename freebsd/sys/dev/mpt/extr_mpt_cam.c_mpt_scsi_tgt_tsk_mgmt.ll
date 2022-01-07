; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_tgt_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_tgt_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.mpt_softc = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_immediate_notify = type { i32, %struct.TYPE_7__, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { %union.ccb*, i32 }
%union.ccb = type { i32 }

@MPT_PRT_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no INOTSs- sending back BSY\0A\00", align 1
@SCSI_STATUS_BUSY = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MPT_PRT_DEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Get FREE INOT %p lun %jx\0A\00", align 1
@MSG_QUERY_TASK_SET = common dso_local global i32 0, align 4
@MSG_ABORT_TASK_SET = common dso_local global i32 0, align 4
@MSG_CLEAR_TASK_SET = common dso_local global i32 0, align 4
@MSG_QUERY_ASYNC_EVENT = common dso_local global i32 0, align 4
@MSG_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@MSG_TARGET_RESET = common dso_local global i32 0, align 4
@MSG_CLEAR_ACA = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@CAM_MESSAGE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, i32*, i32, %struct.TYPE_8__*, i32)* @mpt_scsi_tgt_tsk_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_scsi_tgt_tsk_mgmt(%struct.mpt_softc* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, i32 %4) #0 {
  %6 = alloca %struct.mpt_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_immediate_notify*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.TYPE_9__* @MPT_TGT_STATE(%struct.mpt_softc* %13, i32* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i64 @STAILQ_FIRST(i32* %17)
  %19 = inttoptr i64 %18 to %struct.ccb_immediate_notify*
  store %struct.ccb_immediate_notify* %19, %struct.ccb_immediate_notify** %11, align 8
  %20 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %21 = icmp eq %struct.ccb_immediate_notify* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %24 = load i32, i32* @MPT_PRT_WARN, align 4
  %25 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %23, i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @SCSI_STATUS_BUSY, align 4
  %29 = call i32 @mpt_scsi_tgt_status(%struct.mpt_softc* %26, i32* null, i32* %27, i32 %28, i32* null, i32 0)
  br label %99

30:                                               ; preds = %5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %34 = call i32 @STAILQ_REMOVE_HEAD(i32* %32, i32 %33)
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %36 = load i32, i32* @MPT_PRT_DEBUG1, align 4
  %37 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %38 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %39 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.ccb_immediate_notify* %37, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %46 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %51 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %53 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %83 [
    i32 129, label %55
    i32 134, label %59
    i32 132, label %63
    i32 130, label %67
    i32 131, label %71
    i32 128, label %75
    i32 133, label %79
  ]

55:                                               ; preds = %30
  %56 = load i32, i32* @MSG_QUERY_TASK_SET, align 4
  %57 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %58 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %87

59:                                               ; preds = %30
  %60 = load i32, i32* @MSG_ABORT_TASK_SET, align 4
  %61 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %62 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %87

63:                                               ; preds = %30
  %64 = load i32, i32* @MSG_CLEAR_TASK_SET, align 4
  %65 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %66 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %87

67:                                               ; preds = %30
  %68 = load i32, i32* @MSG_QUERY_ASYNC_EVENT, align 4
  %69 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %70 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %87

71:                                               ; preds = %30
  %72 = load i32, i32* @MSG_LOGICAL_UNIT_RESET, align 4
  %73 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %74 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %87

75:                                               ; preds = %30
  %76 = load i32, i32* @MSG_TARGET_RESET, align 4
  %77 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %78 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %87

79:                                               ; preds = %30
  %80 = load i32, i32* @MSG_CLEAR_ACA, align 4
  %81 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %82 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %87

83:                                               ; preds = %30
  %84 = load i32, i32* @MSG_NOOP, align 4
  %85 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %86 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %79, %75, %71, %67, %63, %59, %55
  %88 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %89 = bitcast %struct.ccb_immediate_notify* %88 to %union.ccb*
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store %union.ccb* %89, %union.ccb** %91, align 8
  %92 = load i32, i32* @CAM_MESSAGE_RECV, align 4
  %93 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %94 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %11, align 8
  %97 = bitcast %struct.ccb_immediate_notify* %96 to %union.ccb*
  %98 = call i32 @xpt_done(%union.ccb* %97)
  br label %99

99:                                               ; preds = %87, %22
  ret void
}

declare dso_local %struct.TYPE_9__* @MPT_TGT_STATE(%struct.mpt_softc*, i32*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, ...) #1

declare dso_local i32 @mpt_scsi_tgt_status(%struct.mpt_softc*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
