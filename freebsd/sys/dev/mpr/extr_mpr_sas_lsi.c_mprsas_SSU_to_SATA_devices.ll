; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas_lsi.c_mprsas_SSU_to_SATA_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas_lsi.c_mprsas_SSU_to_SATA_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, i64, i32, %struct.mprsas_softc* }
%struct.mprsas_softc = type { i32, %struct.mprsas_target* }
%struct.mprsas_target = type { i32, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mprsas_softc*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@MPR_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to alloc CCB to stop unit.\0A\00", align 1
@xpt_periph = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@MPR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to create path to stop unit.\0A\00", align 1
@MPR_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Sending StopUnit: path %s handle %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Incrementing SSU count\0A\00", align 1
@mprsas_stop_unit_done = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MPR_SENSE_LEN = common dso_local global i32 0, align 4
@RB_NOSYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mprwait\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Time has expired waiting for SSU commands to complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, i32)* @mprsas_SSU_to_SATA_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mprsas_SSU_to_SATA_devices(%struct.mpr_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mprsas_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mprsas_target*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %12, i32 0, i32 3
  %14 = load %struct.mprsas_softc*, %struct.mprsas_softc** %13, align 8
  store %struct.mprsas_softc* %14, %struct.mprsas_softc** %5, align 8
  %15 = load %struct.mprsas_softc*, %struct.mprsas_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cam_sim_path(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %20 = call i32 @mpr_lock(%struct.mpr_softc* %19)
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %117, %2
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %120

32:                                               ; preds = %26
  %33 = load %struct.mprsas_softc*, %struct.mprsas_softc** %5, align 8
  %34 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %33, i32 0, i32 1
  %35 = load %struct.mprsas_target*, %struct.mprsas_target** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %35, i64 %36
  store %struct.mprsas_target* %37, %struct.mprsas_target** %9, align 8
  %38 = load %struct.mprsas_target*, %struct.mprsas_target** %9, align 8
  %39 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %117

43:                                               ; preds = %32
  %44 = load %struct.mprsas_target*, %struct.mprsas_target** %9, align 8
  %45 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %43
  %49 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %49, %union.ccb** %6, align 8
  %50 = load %union.ccb*, %union.ccb** %6, align 8
  %51 = icmp eq %union.ccb* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %54 = load i32, i32* @MPR_FAULT, align 4
  %55 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %53, i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %154

56:                                               ; preds = %48
  %57 = load %union.ccb*, %union.ccb** %6, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* @xpt_periph, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %64 = call i64 @xpt_create_path(i32* %59, i32 %60, i32 %61, i64 %62, i32 %63)
  %65 = load i64, i64* @CAM_REQ_CMP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %69 = load i32, i32* @MPR_ERROR, align 4
  %70 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %union.ccb*, %union.ccb** %6, align 8
  %72 = call i32 @xpt_free_ccb(%union.ccb* %71)
  br label %154

73:                                               ; preds = %56
  %74 = load %union.ccb*, %union.ccb** %6, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %79 = call i32 @xpt_path_string(i32 %77, i8* %78, i32 64)
  %80 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %81 = load i32, i32* @MPR_INFO, align 4
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %83 = load %struct.mprsas_target*, %struct.mprsas_target** %9, align 8
  %84 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %80, i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %85)
  %87 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %88 = load i32, i32* @MPR_INFO, align 4
  %89 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %87, i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %union.ccb*, %union.ccb** %6, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @xpt_path_target_id(i32 %97)
  %99 = load %union.ccb*, %union.ccb** %6, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  %102 = load %struct.mprsas_softc*, %struct.mprsas_softc** %5, align 8
  %103 = load %union.ccb*, %union.ccb** %6, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store %struct.mprsas_softc* %102, %struct.mprsas_softc** %105, align 8
  %106 = load %union.ccb*, %union.ccb** %6, align 8
  %107 = bitcast %union.ccb* %106 to i32*
  %108 = load i32, i32* @mprsas_stop_unit_done, align 4
  %109 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32, i32* @MPR_SENSE_LEN, align 4
  %113 = call i32 @scsi_start_stop(i32* %107, i32 0, i32 %108, i32 %109, i32 %110, i32 0, i32 %111, i32 %112, i32 10000)
  %114 = load %union.ccb*, %union.ccb** %6, align 8
  %115 = call i32 @xpt_action(%union.ccb* %114)
  br label %116

116:                                              ; preds = %73, %43
  br label %117

117:                                              ; preds = %116, %42
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %26

120:                                              ; preds = %26
  %121 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %122 = call i32 @mpr_unlock(%struct.mpr_softc* %121)
  store i32 600, i32* %11, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @RB_NOSYNC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 100, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %153, %128
  %130 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %129
  %135 = load i32, i32* @hz, align 4
  %136 = sdiv i32 %135, 10
  %137 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = call i64 (...) @SCHEDULER_STOPPED()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.mprsas_softc*, %struct.mprsas_softc** %5, align 8
  %142 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @xpt_sim_poll(i32 %143)
  br label %145

145:                                              ; preds = %140, %134
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %11, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %151 = load i32, i32* @MPR_ERROR, align 4
  %152 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %150, i32 %151, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %154

153:                                              ; preds = %145
  br label %129

154:                                              ; preds = %52, %67, %149, %129
  ret void
}

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @mpr_lock(%struct.mpr_softc*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, ...) #1

declare dso_local i64 @xpt_create_path(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_path_string(i32, i8*, i32) #1

declare dso_local i32 @xpt_path_target_id(i32) #1

declare dso_local i32 @scsi_start_stop(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @mpr_unlock(%struct.mpr_softc*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @xpt_sim_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
