; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i64, %struct.ciss_command*, %struct.ciss_softc* }
%struct.ciss_command = type { i32* }
%struct.ciss_softc = type { i32 }
%struct.ciss_error_info = type { i32*, i32, i64 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_2__, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"adapter error\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SCSI_STATUS_OK\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"SCSI_STATUS_CHECK_COND  sense size %d  resid %d\0A\00", align 1
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SCSI_STATUS_BUSY\00", align 1
@CAM_SCSI_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown status 0x%x\00", align 1
@CISS_FLAG_BUSY = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_request*)* @ciss_cam_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_cam_complete(%struct.ciss_request* %0) #0 {
  %2 = alloca %struct.ciss_request*, align 8
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_command*, align 8
  %5 = alloca %struct.ciss_error_info*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %2, align 8
  %9 = call i32 @debug_called(i32 2)
  %10 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %11 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %10, i32 0, i32 2
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  store %struct.ciss_softc* %12, %struct.ciss_softc** %3, align 8
  %13 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %14 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %13, i32 0, i32 1
  %15 = load %struct.ciss_command*, %struct.ciss_command** %14, align 8
  store %struct.ciss_command* %15, %struct.ciss_command** %4, align 8
  %16 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %17 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = bitcast i32* %19 to %struct.ciss_error_info*
  store %struct.ciss_error_info* %20, %struct.ciss_error_info** %5, align 8
  %21 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %22 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %24, %struct.ccb_scsiio** %6, align 8
  %25 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %26 = call i32 @ciss_report_request(%struct.ciss_request* %25, i32* %8, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %111 [
    i32 -1, label %31
    i32 128, label %39
    i32 129, label %47
    i32 130, label %103
  ]

31:                                               ; preds = %1
  %32 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %122

39:                                               ; preds = %1
  %40 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @CAM_REQ_CMP, align 4
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %43 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %122

47:                                               ; preds = %1
  %48 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %49 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %52 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %50, i32 %53)
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %56 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %55, i32 0, i32 5
  %57 = load i32, i32* @SSD_FULL_SIZE, align 4
  %58 = call i32 @bzero(i32* %56, i32 %57)
  %59 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %60 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %64 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %63, i32 0, i32 5
  %65 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %66 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bcopy(i32* %62, i32* %64, i64 %67)
  %69 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %70 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %73 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %47
  %77 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %78 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %81 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %85 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %89

86:                                               ; preds = %47
  %87 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.ciss_error_info*, %struct.ciss_error_info** %5, align 8
  %91 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %94 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %96 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %122

103:                                              ; preds = %1
  %104 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @CAM_SCSI_BUSY, align 4
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %122

111:                                              ; preds = %1
  %112 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %113 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %117 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %118 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %111, %103, %89, %39, %31
  %123 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %124 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %125 = call i32 @ciss_cam_complete_fixup(%struct.ciss_softc* %123, %struct.ccb_scsiio* %124)
  %126 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %127 = call i32 @ciss_release_request(%struct.ciss_request* %126)
  %128 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CISS_FLAG_BUSY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %122
  %135 = load i32, i32* @CISS_FLAG_BUSY, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %142 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %134
  %149 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %150 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @xpt_path_sim(i32 %152)
  %154 = call i32 @xpt_release_simq(i32 %153, i32 0)
  br label %162

155:                                              ; preds = %134
  %156 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %157 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %158 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %148
  br label %163

163:                                              ; preds = %162, %122
  %164 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %165 = bitcast %struct.ccb_scsiio* %164 to %union.ccb*
  %166 = call i32 @xpt_done(%union.ccb* %165)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @ciss_cam_complete_fixup(%struct.ciss_softc*, %struct.ccb_scsiio*) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_path_sim(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
