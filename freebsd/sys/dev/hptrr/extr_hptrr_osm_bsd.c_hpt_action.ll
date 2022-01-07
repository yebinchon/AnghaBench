; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"hpt_action(fn=%d, id=%d)\00", align 1
@CAM_FUNC_NOTAVAIL = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@osm_max_targets = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"HPT   \00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @hpt_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %8 = call i32 @cam_sim_softc(%struct.cam_sim* %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_7__*
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_7__*
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KdPrint(i8* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = call i32 @hpt_assert_vbus_locked(%struct.TYPE_8__* %22)
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %111 [
    i32 129, label %28
    i32 130, label %32
    i32 132, label %37
    i32 128, label %37
    i32 133, label %42
    i32 131, label %46
  ]

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @hpt_scsi_io(%struct.TYPE_8__* %29, %union.ccb* %30)
  br label %119

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ldm_reset_vbus(i32 %35)
  br label %116

37:                                               ; preds = %2, %2
  %38 = load i32, i32* @CAM_FUNC_NOTAVAIL, align 4
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %116

42:                                               ; preds = %2
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to i32*
  %45 = call i32 @cam_calc_geometry(i32* %44, i32 1)
  br label %116

46:                                               ; preds = %2
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %48, %struct.ccb_pathinq** %6, align 8
  %49 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @PI_SDTR_ABLE, align 4
  %52 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %53 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %54, i32 0, i32 17
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @PIM_NOBUSRESET, align 4
  %57 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %58 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %60 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %59, i32 0, i32 15
  store i32 0, i32* %60, align 8
  %61 = load i8*, i8** @osm_max_targets, align 8
  %62 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %62, i32 0, i32 14
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %65 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %64, i32 0, i32 13
  store i32 0, i32* %65, align 8
  %66 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %67 = call i32 @cam_sim_unit(%struct.cam_sim* %66)
  %68 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %69 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %71 = call i32 @cam_sim_bus(%struct.cam_sim* %70)
  %72 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %73 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** @osm_max_targets, align 8
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %78 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %77, i32 0, i32 1
  store i32 3300, i32* %78, align 4
  %79 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %80 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SIM_IDLEN, align 4
  %83 = call i32 @strlcpy(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %85 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HBA_IDLEN, align 4
  %88 = call i32 @strlcpy(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %93 = call i8* @cam_sim_name(%struct.cam_sim* %92)
  %94 = load i32, i32* @DEV_IDLEN, align 4
  %95 = call i32 @strlcpy(i32 %91, i8* %93, i32 %94)
  %96 = load i32, i32* @XPORT_SPI, align 4
  %97 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %98 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %100 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %99, i32 0, i32 2
  store i32 2, i32* %100, align 8
  %101 = load i32, i32* @PROTO_SCSI, align 4
  %102 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %103 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @SCSI_REV_2, align 4
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @CAM_REQ_CMP, align 4
  %108 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %109 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %116

111:                                              ; preds = %2
  %112 = load i32, i32* @CAM_REQ_INVALID, align 4
  %113 = load %union.ccb*, %union.ccb** %4, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_7__*
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %46, %42, %37, %32
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = call i32 @xpt_done(%union.ccb* %117)
  br label %119

119:                                              ; preds = %116, %28
  ret void
}

declare dso_local i32 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hpt_assert_vbus_locked(%struct.TYPE_8__*) #1

declare dso_local i32 @hpt_scsi_io(%struct.TYPE_8__*, %union.ccb*) #1

declare dso_local i32 @ldm_reset_vbus(i32) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
