; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas_lsi.c_mpssas_SSU_to_SATA_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas_lsi.c_mpssas_SSU_to_SATA_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64, i64, i32, %struct.mpssas_softc* }
%struct.mpssas_softc = type { i32, %struct.mpssas_target* }
%struct.mpssas_target = type { i32, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mpssas_softc*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@MPS_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to alloc CCB to stop unit.\0A\00", align 1
@xpt_periph = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to create LUN path to stop unit.\0A\00", align 1
@MPS_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Sending StopUnit: path %s handle %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Incrementing SSU count\0A\00", align 1
@mpssas_stop_unit_done = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MPS_SENSE_LEN = common dso_local global i32 0, align 4
@RB_NOSYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mpswait\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Time has expired waiting for SSU commands to complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, i32)* @mpssas_SSU_to_SATA_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpssas_SSU_to_SATA_devices(%struct.mps_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpssas_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mpssas_target*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %12, i32 0, i32 3
  %14 = load %struct.mpssas_softc*, %struct.mpssas_softc** %13, align 8
  store %struct.mpssas_softc* %14, %struct.mpssas_softc** %5, align 8
  %15 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cam_sim_path(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %115, %2
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %24
  %31 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %32 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %31, i32 0, i32 1
  %33 = load %struct.mpssas_target*, %struct.mpssas_target** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %33, i64 %34
  store %struct.mpssas_target* %35, %struct.mpssas_target** %9, align 8
  %36 = load %struct.mpssas_target*, %struct.mpssas_target** %9, align 8
  %37 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %115

41:                                               ; preds = %30
  %42 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %42, %union.ccb** %6, align 8
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = icmp eq %union.ccb* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %47 = load i32, i32* @MPS_FAULT, align 4
  %48 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %46, i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %150

49:                                               ; preds = %41
  %50 = load %struct.mpssas_target*, %struct.mpssas_target** %9, align 8
  %51 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %49
  %55 = load %union.ccb*, %union.ccb** %6, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* @xpt_periph, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %62 = call i64 @xpt_create_path(i32* %57, i32 %58, i32 %59, i64 %60, i32 %61)
  %63 = load i64, i64* @CAM_REQ_CMP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %67 = load i32, i32* @MPS_FAULT, align 4
  %68 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %66, i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %union.ccb*, %union.ccb** %6, align 8
  %70 = call i32 @xpt_free_ccb(%union.ccb* %69)
  br label %150

71:                                               ; preds = %54
  %72 = load %union.ccb*, %union.ccb** %6, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %77 = call i32 @xpt_path_string(i32 %75, i8* %76, i32 64)
  %78 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %79 = load i32, i32* @MPS_INFO, align 4
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %81 = load %struct.mpssas_target*, %struct.mpssas_target** %9, align 8
  %82 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %78, i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %83)
  %85 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %86 = load i32, i32* @MPS_INFO, align 4
  %87 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %85, i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %union.ccb*, %union.ccb** %6, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @xpt_path_target_id(i32 %95)
  %97 = load %union.ccb*, %union.ccb** %6, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %101 = load %union.ccb*, %union.ccb** %6, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store %struct.mpssas_softc* %100, %struct.mpssas_softc** %103, align 8
  %104 = load %union.ccb*, %union.ccb** %6, align 8
  %105 = bitcast %union.ccb* %104 to i32*
  %106 = load i32, i32* @mpssas_stop_unit_done, align 4
  %107 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i32, i32* @MPS_SENSE_LEN, align 4
  %111 = call i32 @scsi_start_stop(i32* %105, i32 0, i32 %106, i32 %107, i32 %108, i32 0, i32 %109, i32 %110, i32 10000)
  %112 = load %union.ccb*, %union.ccb** %6, align 8
  %113 = call i32 @xpt_action(%union.ccb* %112)
  br label %114

114:                                              ; preds = %71, %49
  br label %115

115:                                              ; preds = %114, %40
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %24

118:                                              ; preds = %24
  store i32 600, i32* %11, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @RB_NOSYNC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 100, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %149, %124
  %126 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125
  %131 = load i32, i32* @hz, align 4
  %132 = sdiv i32 %131, 10
  %133 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = call i64 (...) @SCHEDULER_STOPPED()
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %138 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @xpt_sim_poll(i32 %139)
  br label %141

141:                                              ; preds = %136, %130
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %11, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %147 = load i32, i32* @MPS_FAULT, align 4
  %148 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %146, i32 %147, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %150

149:                                              ; preds = %141
  br label %125

150:                                              ; preds = %45, %65, %145, %125
  ret void
}

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, ...) #1

declare dso_local i64 @xpt_create_path(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_path_string(i32, i8*, i32) #1

declare dso_local i32 @xpt_path_target_id(i32) #1

declare dso_local i32 @scsi_start_stop(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @xpt_sim_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
