; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_recover_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_recover_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %union.ccb*, %struct.TYPE_10__* }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"mpt_recover_commands: no requests.\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Timedout requests already complete. Interrupts may not be functioning.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"attempting to abort req %p:%u function %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"null ccb in timed out request. Resetting Controller.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"just putting it back on the pend q\0A\00", align 1
@links = common dso_local global i32 0, align 4
@MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK = common dso_local global i32 0, align 4
@scsi_io_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@REQ_STATE_FREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"mpt_recover_commands: abort timed-out. Resetting controller\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"mpt_recover_commands: IOC Status 0x%x. Resetting controller.\0A\00", align 1
@MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED = common dso_local global i32 0, align 4
@MPI_SCSITASKMGMT_RSP_TM_COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"mpt_recover_commands: TMF Response 0x%x. Resetting controller.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"abort of req %p:%u completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_recover_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_recover_commands(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 2
  %11 = call i64 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %15 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %169

16:                                               ; preds = %1
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %18 = call i32 @mpt_intr(%struct.mpt_softc* %17)
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 2
  %21 = call i64 @TAILQ_EMPTY(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %25 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %24, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %27 = call i32 @mpt_enable_ints(%struct.mpt_softc* %26)
  br label %169

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %162, %155, %140, %128, %100, %66, %52, %28
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %30, i32 0, i32 2
  %32 = call %struct.TYPE_9__* @TAILQ_FIRST(i32* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %3, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %169

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %union.ccb*, %union.ccb** %48, align 8
  store %union.ccb* %49, %union.ccb** %4, align 8
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = icmp eq %union.ccb* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %34
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %54 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @mpt_reset(%struct.mpt_softc* %55, i32 %56)
  br label %29

58:                                               ; preds = %34
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %61 = call i32 @mpt_set_ccb_status(%union.ccb* %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %66 [
    i32 128, label %65
    i32 129, label %65
  ]

65:                                               ; preds = %58, %58
  br label %79

66:                                               ; preds = %58
  %67 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %68 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %70 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = load i32, i32* @links, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %70, %struct.TYPE_9__* %71, i32 %72)
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = load i32, i32* @links, align 4
  %78 = call i32 @TAILQ_INSERT_HEAD(i32* %75, %struct.TYPE_9__* %76, i32 %77)
  br label %29

79:                                               ; preds = %65
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %81 = load i32, i32* @MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK, align 4
  %82 = load %union.ccb*, %union.ccb** %4, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @scsi_io_handler_id, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @htole32(i32 %94)
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @mpt_scsi_send_tmf(%struct.mpt_softc* %80, i32 %81, i32 0, i32 0, i32 %85, i32 %89, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  br label %29

101:                                              ; preds = %79
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %103 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %104 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i32, i32* @REQ_STATE_DONE, align 4
  %107 = load i32, i32* @REQ_STATE_DONE, align 4
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i32 @mpt_wait_req(%struct.mpt_softc* %102, %struct.TYPE_11__* %105, i32 %106, i32 %107, i32 %108, i32 500)
  store i32 %109, i32* %5, align 4
  %110 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %111 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16toh(i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %117 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @REQ_STATE_FREE, align 4
  %122 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %123 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %101
  %129 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %130 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %129, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @mpt_reset(%struct.mpt_softc* %131, i32 %132)
  br label %29

134:                                              ; preds = %101
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %141, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @mpt_reset(%struct.mpt_softc* %144, i32 %145)
  br label %29

147:                                              ; preds = %134
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @MPI_SCSITASKMGMT_RSP_TM_COMPLETE, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %156, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %160 = load i32, i32* @TRUE, align 4
  %161 = call i32 @mpt_reset(%struct.mpt_softc* %159, i32 %160)
  br label %29

162:                                              ; preds = %151, %147
  %163 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* %164, i32 %167)
  br label %29

169:                                              ; preds = %13, %23, %29
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_intr(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_enable_ints(%struct.mpt_softc*) #1

declare dso_local %struct.TYPE_9__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_set_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mpt_scsi_send_tmf(%struct.mpt_softc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
