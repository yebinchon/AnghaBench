; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_send_tmf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_send_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i8*, i32, i8*, i8*, i32, i8*, i32 }

@REQ_STATE_FREE = common dso_local global i32 0, align 4
@MPT_TMF_MAX_TIMEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@REQ_STATE_ALLOCATED = common dso_local global i32 0, align 4
@REQ_STATE_QUEUED = common dso_local global i32 0, align 4
@MPI_FUNCTION_SCSI_TASK_MGMT = common dso_local global i32 0, align 4
@scsi_tmf_handler_id = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Issuing TMF %p:%u with MsgContext of 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"mpt_scsi_send_tmf: tmf_req already on pending list\00", align 1
@links = common dso_local global i32 0, align 4
@MPT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i8*, i8*, i8*, i32, i32, i8*, i32)* @mpt_scsi_send_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_scsi_send_tmf(%struct.mpt_softc* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpt_softc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %22 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i32, i32* @REQ_STATE_FREE, align 4
  %25 = load i32, i32* @REQ_STATE_FREE, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @MPT_TMF_MAX_TIMEOUT, align 4
  %28 = call i32 @mpt_wait_req(%struct.mpt_softc* %20, %struct.TYPE_12__* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @mpt_reset(%struct.mpt_softc* %32, i32 %33)
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %9, align 4
  br label %153

36:                                               ; preds = %8
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @mpt_assign_serno(%struct.mpt_softc* %37, %struct.TYPE_12__* %40)
  %42 = load i32, i32* @REQ_STATE_ALLOCATED, align 4
  %43 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %50 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %18, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %56 = call i32 @memset(%struct.TYPE_11__* %55, i32 0, i32 64)
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @MPI_FUNCTION_SCSI_TASK_MGMT, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %73 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @scsi_tmf_handler_id, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @htole32(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %85)
  %87 = call i32 @be64enc(i32 %84, i32 %86)
  %88 = load i8*, i8** %16, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %92 = load i64, i64* @MPT_PRT_DEBUG, align 8
  %93 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %94 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %97 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @mpt_lprt(%struct.mpt_softc* %91, i64 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %95, i32 %100, i32 %103)
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %106 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MPT_PRT_DEBUG, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %36
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %112 = call i32 @mpt_print_request(%struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %110, %36
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %115 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %116 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i64 @mpt_req_on_pending_list(%struct.mpt_softc* %114, %struct.TYPE_12__* %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @KASSERT(i32 %120, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %123 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %122, i32 0, i32 2
  %124 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %125 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* @links, align 4
  %128 = call i32 @TAILQ_INSERT_HEAD(i32* %123, %struct.TYPE_12__* %126, i32 %127)
  %129 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %131 = call i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %129, i32 64, %struct.TYPE_11__* %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @MPT_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %113
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %137 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %136, i32 0, i32 2
  %138 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %139 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* @links, align 4
  %142 = call i32 @TAILQ_REMOVE(i32* %137, %struct.TYPE_12__* %140, i32 %141)
  %143 = load i32, i32* @REQ_STATE_FREE, align 4
  %144 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %145 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 8
  %148 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  %149 = load i32, i32* @TRUE, align 4
  %150 = call i32 @mpt_reset(%struct.mpt_softc* %148, i32 %149)
  br label %151

151:                                              ; preds = %135, %113
  %152 = load i32, i32* %19, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %31
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_assign_serno(%struct.mpt_softc*, %struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @be64enc(i32, i32) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i64, i8*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mpt_print_request(%struct.TYPE_11__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @mpt_req_on_pending_list(%struct.mpt_softc*, %struct.TYPE_12__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
