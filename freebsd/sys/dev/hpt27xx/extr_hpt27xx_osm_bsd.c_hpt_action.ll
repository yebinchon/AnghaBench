; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"<8>hpt_action(fn=%d, id=%d)\00", align 1
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
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %8 = call i32 @cam_sim_softc(%struct.cam_sim* %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %5, align 8
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_11__*
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_11__*
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KdPrint(i8* %20)
  %22 = load %union.ccb*, %union.ccb** %4, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_11__*
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %141 [
    i32 129, label %26
    i32 130, label %34
    i32 132, label %43
    i32 128, label %43
    i32 133, label %48
    i32 131, label %76
  ]

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @hpt_lock_vbus(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @hpt_scsi_io(%struct.TYPE_12__* %29, %union.ccb* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i32 @hpt_unlock_vbus(%struct.TYPE_12__* %32)
  br label %149

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = call i32 @hpt_lock_vbus(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ldm_reset_vbus(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = call i32 @hpt_unlock_vbus(%struct.TYPE_12__* %41)
  br label %146

43:                                               ; preds = %2, %2
  %44 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_11__*
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  br label %146

48:                                               ; preds = %2
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 255, i32* %51, align 8
  %52 = load %union.ccb*, %union.ccb** %4, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 63, i32* %54, align 4
  %55 = load %union.ccb*, %union.ccb** %4, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %62, %66
  %68 = sdiv i32 %58, %67
  %69 = load %union.ccb*, %union.ccb** %4, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load i8*, i8** @CAM_REQ_CMP, align 8
  %73 = load %union.ccb*, %union.ccb** %4, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_11__*
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  br label %146

76:                                               ; preds = %2
  %77 = load %union.ccb*, %union.ccb** %4, align 8
  %78 = bitcast %union.ccb* %77 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %78, %struct.ccb_pathinq** %6, align 8
  %79 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %80 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @PI_SDTR_ABLE, align 4
  %82 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %83 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %82, i32 0, i32 18
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %85 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %84, i32 0, i32 17
  store i32 0, i32* %85, align 8
  %86 = load i32, i32* @PIM_NOBUSRESET, align 4
  %87 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %87, i32 0, i32 16
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 15
  store i32 0, i32* %90, align 8
  %91 = load i8*, i8** @osm_max_targets, align 8
  %92 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %93 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %92, i32 0, i32 14
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %95 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %94, i32 0, i32 13
  store i32 0, i32* %95, align 8
  %96 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %97 = call i32 @cam_sim_unit(%struct.cam_sim* %96)
  %98 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 4
  %100 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %101 = call i32 @cam_sim_bus(%struct.cam_sim* %100)
  %102 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %103 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @osm_max_targets, align 8
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %108 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %107, i32 0, i32 1
  store i32 3300, i32* %108, align 4
  %109 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %110 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SIM_IDLEN, align 4
  %113 = call i32 @strlcpy(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %115 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HBA_IDLEN, align 4
  %118 = call i32 @strlcpy(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %120 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %123 = call i8* @cam_sim_name(%struct.cam_sim* %122)
  %124 = load i32, i32* @DEV_IDLEN, align 4
  %125 = call i32 @strlcpy(i32 %121, i8* %123, i32 %124)
  %126 = load i32, i32* @XPORT_SPI, align 4
  %127 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %128 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %130 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %129, i32 0, i32 2
  store i32 2, i32* %130, align 8
  %131 = load i32, i32* @PROTO_SCSI, align 4
  %132 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %133 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @SCSI_REV_2, align 4
  %135 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %136 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** @CAM_REQ_CMP, align 8
  %138 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %139 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  br label %146

141:                                              ; preds = %2
  %142 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %143 = load %union.ccb*, %union.ccb** %4, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_11__*
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %76, %48, %43, %34
  %147 = load %union.ccb*, %union.ccb** %4, align 8
  %148 = call i32 @xpt_done(%union.ccb* %147)
  br label %149

149:                                              ; preds = %146, %26
  ret void
}

declare dso_local i32 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hpt_lock_vbus(%struct.TYPE_12__*) #1

declare dso_local i32 @hpt_scsi_io(%struct.TYPE_12__*, %union.ccb*) #1

declare dso_local i32 @hpt_unlock_vbus(%struct.TYPE_12__*) #1

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
