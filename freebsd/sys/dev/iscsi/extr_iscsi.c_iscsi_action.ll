; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_7__, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.iscsi_session = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_9__, i32, i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i8* }

@fail_on_disconnection = common dso_local global i64 0, align 8
@CAM_DEV_NOT_THERE = common dso_local global i8* null, align 8
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_EXTLUNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NULL conn\00", align 1
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"iSCSI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_ISCSI = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_SPC3 = common dso_local global i8* null, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @iscsi_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  %7 = alloca %struct.ccb_trans_settings*, align 8
  %8 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %10 = call %struct.iscsi_session* @cam_sim_softc(%struct.cam_sim* %9)
  store %struct.iscsi_session* %10, %struct.iscsi_session** %5, align 8
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %12 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %11)
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i64, i64* @fail_on_disconnection, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %2
  %26 = load i8*, i8** @CAM_DEV_NOT_THERE, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @xpt_done(%union.ccb* %30)
  br label %175

32:                                               ; preds = %22, %17
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %167 [
    i32 131, label %37
    i32 132, label %124
    i32 133, label %151
    i32 134, label %159
    i32 129, label %163
  ]

37:                                               ; preds = %32
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %39, %struct.ccb_pathinq** %6, align 8
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @PI_TAG_ABLE, align 4
  %43 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %44 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %45, i32 0, i32 18
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @PIM_EXTLUNS, align 4
  %48 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %49 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %48, i32 0, i32 17
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp eq %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = call i32 @ISCSI_WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %70

56:                                               ; preds = %37
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @PIM_UNMAPPED, align 4
  %65 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %66 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %56
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %72 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %71, i32 0, i32 16
  store i32 0, i32* %72, align 4
  %73 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %74 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %73, i32 0, i32 15
  store i32 0, i32* %74, align 8
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 1
  store i32 255, i32* %76, align 4
  %77 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %78 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %77, i32 0, i32 14
  store i32 -1, i32* %78, align 4
  %79 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %80 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SIM_IDLEN, align 4
  %83 = call i32 @strlcpy(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %85 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HBA_IDLEN, align 4
  %88 = call i32 @strlcpy(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %93 = call i8* @cam_sim_name(%struct.cam_sim* %92)
  %94 = load i32, i32* @DEV_IDLEN, align 4
  %95 = call i32 @strlcpy(i32 %91, i8* %93, i32 %94)
  %96 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %97 = call i32 @cam_sim_unit(%struct.cam_sim* %96)
  %98 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 4
  %100 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %101 = call i32 @cam_sim_bus(%struct.cam_sim* %100)
  %102 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %103 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %105 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %104, i32 0, i32 2
  store i32 150000, i32* %105, align 8
  %106 = load i8*, i8** @XPORT_ISCSI, align 8
  %107 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %108 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %110 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %109, i32 0, i32 7
  store i32 0, i32* %110, align 8
  %111 = load i8*, i8** @PROTO_SCSI, align 8
  %112 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %113 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @SCSI_REV_SPC3, align 8
  %115 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %116 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @MAXPHYS, align 4
  %118 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %119 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** @CAM_REQ_CMP, align 8
  %121 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %122 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  br label %172

124:                                              ; preds = %32
  %125 = load %union.ccb*, %union.ccb** %4, align 8
  %126 = bitcast %union.ccb* %125 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %126, %struct.ccb_trans_settings** %7, align 8
  %127 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %128 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %129, %struct.ccb_trans_settings_scsi** %8, align 8
  %130 = load i8*, i8** @PROTO_SCSI, align 8
  %131 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %132 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @SCSI_REV_SPC3, align 8
  %134 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %135 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @XPORT_ISCSI, align 8
  %137 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %139, i32 0, i32 1
  store i32 0, i32* %140, align 8
  %141 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %142 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %8, align 8
  %143 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %145 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %8, align 8
  %146 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i8*, i8** @CAM_REQ_CMP, align 8
  %148 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %149 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %172

151:                                              ; preds = %32
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to i32*
  %154 = call i32 @cam_calc_geometry(i32* %153, i32 1)
  %155 = load i8*, i8** @CAM_REQ_CMP, align 8
  %156 = load %union.ccb*, %union.ccb** %4, align 8
  %157 = bitcast %union.ccb* %156 to %struct.TYPE_10__*
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  br label %172

159:                                              ; preds = %32
  %160 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %161 = load %union.ccb*, %union.ccb** %4, align 8
  %162 = call i32 @iscsi_action_abort(%struct.iscsi_session* %160, %union.ccb* %161)
  br label %175

163:                                              ; preds = %32
  %164 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %165 = load %union.ccb*, %union.ccb** %4, align 8
  %166 = call i32 @iscsi_action_scsiio(%struct.iscsi_session* %164, %union.ccb* %165)
  br label %175

167:                                              ; preds = %32
  %168 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %169 = load %union.ccb*, %union.ccb** %4, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_10__*
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %167, %151, %124, %70
  %173 = load %union.ccb*, %union.ccb** %4, align 8
  %174 = call i32 @xpt_done(%union.ccb* %173)
  br label %175

175:                                              ; preds = %172, %163, %159, %25
  ret void
}

declare dso_local %struct.iscsi_session* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @ISCSI_WARN(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @iscsi_action_abort(%struct.iscsi_session*, %union.ccb*) #1

declare dso_local i32 @iscsi_action_scsiio(%struct.iscsi_session*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
