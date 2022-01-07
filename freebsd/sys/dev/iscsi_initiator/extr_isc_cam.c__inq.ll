; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_cam.c__inq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_cam.c__inq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i64, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"sid=%d target=%d lun=%jx\00", align 1
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_WIDE_32 = common dso_local global i32 0, align 4
@ISCSI_MAX_TARGETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"iSCSI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPORT_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @_inq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_inq(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_pathinq*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %union.ccb*, %union.ccb** %4, align 8
  %8 = bitcast %union.ccb* %7 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %8, %struct.ccb_pathinq** %5, align 8
  %9 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %10 = call %struct.TYPE_9__* @cam_sim_softc(%struct.cam_sim* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = call i32 @debug_called(i32 8)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @debug(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %23)
  %25 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %26 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @PI_SDTR_ABLE, align 4
  %28 = load i32, i32* @PI_TAG_ABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PI_WIDE_32, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %33 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %35 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %34, i32 0, i32 16
  store i64 0, i64* %35, align 8
  %36 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %37 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %36, i32 0, i32 15
  store i64 0, i64* %37, align 8
  %38 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %39 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %38, i32 0, i32 14
  store i64 0, i64* %39, align 8
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 13
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @ISCSI_MAX_TARGETS, align 4
  %43 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %44 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %51 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %50, i32 0, i32 11
  store i64 %49, i64* %51, align 8
  %52 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %53 = call i32 @cam_sim_bus(%struct.cam_sim* %52)
  %54 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %57 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %56, i32 0, i32 2
  store i32 3300, i32* %57, align 8
  %58 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SIM_IDLEN, align 4
  %62 = call i32 @strlcpy(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %64 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HBA_IDLEN, align 4
  %67 = call i32 @strlcpy(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %69 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %72 = call i8* @cam_sim_name(%struct.cam_sim* %71)
  %73 = load i32, i32* @DEV_IDLEN, align 4
  %74 = call i32 @strlcpy(i32 %70, i8* %72, i32 %73)
  %75 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %76 = call i32 @cam_sim_unit(%struct.cam_sim* %75)
  %77 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %78 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @CAM_REQ_CMP, align 4
  %80 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %81 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  ret void
}

declare dso_local %struct.TYPE_9__* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
