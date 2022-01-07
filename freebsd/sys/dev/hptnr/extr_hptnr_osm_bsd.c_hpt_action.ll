; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"hpt_action(fn=%d, id=%d)\00", align 1
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
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
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @hpt_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %8 = call i32 @cam_sim_softc(%struct.cam_sim* %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_9__*
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_9__*
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KdPrint(i8* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @hpt_assert_vbus_locked(%struct.TYPE_10__* %22)
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %135 [
    i32 129, label %28
    i32 130, label %32
    i32 132, label %37
    i32 128, label %37
    i32 133, label %42
    i32 131, label %70
  ]

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @hpt_scsi_io(%struct.TYPE_10__* %29, %union.ccb* %30)
  br label %143

32:                                               ; preds = %2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ldm_reset_vbus(i32 %35)
  br label %140

37:                                               ; preds = %2, %2
  %38 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_9__*
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  br label %140

42:                                               ; preds = %2
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 255, i32* %45, align 8
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 63, i32* %48, align 4
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %56, %60
  %62 = sdiv i32 %52, %61
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load i8*, i8** @CAM_REQ_CMP, align 8
  %67 = load %union.ccb*, %union.ccb** %4, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_9__*
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  br label %140

70:                                               ; preds = %2
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = bitcast %union.ccb* %71 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %72, %struct.ccb_pathinq** %6, align 8
  %73 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %74 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @PI_SDTR_ABLE, align 4
  %76 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %77 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 17
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @PIM_NOBUSRESET, align 4
  %81 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %82 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %81, i32 0, i32 16
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 15
  store i32 0, i32* %84, align 8
  %85 = load i8*, i8** @osm_max_targets, align 8
  %86 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %87 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %86, i32 0, i32 14
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %89 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %88, i32 0, i32 13
  store i32 0, i32* %89, align 8
  %90 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %91 = call i32 @cam_sim_unit(%struct.cam_sim* %90)
  %92 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %93 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %95 = call i32 @cam_sim_bus(%struct.cam_sim* %94)
  %96 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %97 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** @osm_max_targets, align 8
  %99 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %100 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %102 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %101, i32 0, i32 1
  store i32 3300, i32* %102, align 4
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SIM_IDLEN, align 4
  %107 = call i32 @strlcpy(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %109 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @HBA_IDLEN, align 4
  %112 = call i32 @strlcpy(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %114 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %117 = call i8* @cam_sim_name(%struct.cam_sim* %116)
  %118 = load i32, i32* @DEV_IDLEN, align 4
  %119 = call i32 @strlcpy(i32 %115, i8* %117, i32 %118)
  %120 = load i32, i32* @XPORT_SPI, align 4
  %121 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %122 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %124 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %123, i32 0, i32 2
  store i32 2, i32* %124, align 8
  %125 = load i32, i32* @PROTO_SCSI, align 4
  %126 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %127 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @SCSI_REV_2, align 4
  %129 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %130 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i8*, i8** @CAM_REQ_CMP, align 8
  %132 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %133 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  br label %140

135:                                              ; preds = %2
  %136 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %137 = load %union.ccb*, %union.ccb** %4, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_9__*
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %135, %70, %42, %37, %32
  %141 = load %union.ccb*, %union.ccb** %4, align 8
  %142 = call i32 @xpt_done(%union.ccb* %141)
  br label %143

143:                                              ; preds = %140, %28
  ret void
}

declare dso_local i32 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hpt_assert_vbus_locked(%struct.TYPE_10__*) #1

declare dso_local i32 @hpt_scsi_io(%struct.TYPE_10__*, %union.ccb*) #1

declare dso_local i32 @ldm_reset_vbus(i32) #1

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
