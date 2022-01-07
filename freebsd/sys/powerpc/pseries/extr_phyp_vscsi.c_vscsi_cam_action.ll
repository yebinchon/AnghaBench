; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, %struct.TYPE_6__, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.vscsi_softc = type { i32, i32, i32, i32 }
%struct.vscsi_xfer = type { i32, %union.ccb* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_EXTLUNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SRP = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_SPC4 = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_REQ_INPROG = common dso_local global i8* null, align 8
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"SCSI queue flooded\00", align 1
@queue = common dso_local global i32 0, align 4
@vscsi_scsi_command = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @vscsi_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.vscsi_softc*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  %7 = alloca %struct.vscsi_xfer*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %9 = call %struct.vscsi_softc* @cam_sim_softc(%struct.cam_sim* %8)
  store %struct.vscsi_softc* %9, %struct.vscsi_softc** %5, align 8
  %10 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %11 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %10, i32 0, i32 3
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_10__*
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %163 [
    i32 132, label %18
    i32 131, label %81
    i32 130, label %86
    i32 133, label %94
    i32 128, label %122
    i32 129, label %127
  ]

18:                                               ; preds = %2
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %20, %struct.ccb_pathinq** %6, align 8
  %21 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %22 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @PI_TAG_ABLE, align 4
  %24 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %25 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %24, i32 0, i32 18
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @PIM_EXTLUNS, align 4
  %27 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %27, i32 0, i32 17
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %30 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 16
  store i32 0, i32* %30, align 4
  %31 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %32 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %31, i32 0, i32 15
  store i32 0, i32* %32, align 8
  %33 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %34 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %33, i32 0, i32 14
  store i32 0, i32* %34, align 4
  %35 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %36 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %35, i32 0, i32 13
  store i32 0, i32* %36, align 8
  %37 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %38 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %37, i32 0, i32 12
  store i32 -1, i32* %38, align 4
  %39 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %40 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SIM_IDLEN, align 4
  %43 = call i32 @strlcpy(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %45 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HBA_IDLEN, align 4
  %48 = call i32 @strlcpy(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %53 = call i8* @cam_sim_name(%struct.cam_sim* %52)
  %54 = load i32, i32* @DEV_IDLEN, align 4
  %55 = call i32 @strlcpy(i32 %51, i8* %53, i32 %54)
  %56 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %57 = call i32 @cam_sim_unit(%struct.cam_sim* %56)
  %58 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %61 = call i32 @cam_sim_bus(%struct.cam_sim* %60)
  %62 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %65 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %64, i32 0, i32 1
  store i32 150000, i32* %65, align 4
  %66 = load i8*, i8** @XPORT_SRP, align 8
  %67 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %68 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %70 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %69, i32 0, i32 5
  store i32 0, i32* %70, align 8
  %71 = load i8*, i8** @PROTO_SCSI, align 8
  %72 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %73 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @SCSI_REV_SPC4, align 8
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @CAM_REQ_CMP, align 8
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  br label %168

81:                                               ; preds = %2
  %82 = load i8*, i8** @CAM_REQ_CMP, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = bitcast %union.ccb* %83 to %struct.TYPE_10__*
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  br label %168

86:                                               ; preds = %2
  %87 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_10__*
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = call i32 @vscsi_task_management(%struct.vscsi_softc* %91, %union.ccb* %92)
  br label %171

94:                                               ; preds = %2
  %95 = load i8*, i8** @PROTO_SCSI, align 8
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_9__*
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 5
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @SCSI_REV_SPC4, align 8
  %100 = load %union.ccb*, %union.ccb** %4, align 8
  %101 = bitcast %union.ccb* %100 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** @XPORT_SRP, align 8
  %104 = load %union.ccb*, %union.ccb** %4, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_9__*
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  %107 = load %union.ccb*, %union.ccb** %4, align 8
  %108 = bitcast %union.ccb* %107 to %struct.TYPE_9__*
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_9__*
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load %union.ccb*, %union.ccb** %4, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_9__*
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load i8*, i8** @CAM_REQ_CMP, align 8
  %119 = load %union.ccb*, %union.ccb** %4, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_10__*
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  br label %168

122:                                              ; preds = %2
  %123 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %124 = load %union.ccb*, %union.ccb** %4, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_10__*
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  br label %168

127:                                              ; preds = %2
  %128 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %129 = load %union.ccb*, %union.ccb** %4, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_10__*
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %133 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %132, i32 0, i32 2
  %134 = call %struct.vscsi_xfer* @TAILQ_FIRST(i32* %133)
  store %struct.vscsi_xfer* %134, %struct.vscsi_xfer** %7, align 8
  %135 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %136 = icmp eq %struct.vscsi_xfer* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %127
  %140 = load %union.ccb*, %union.ccb** %4, align 8
  %141 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %142 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %141, i32 0, i32 1
  store %union.ccb* %140, %union.ccb** %142, align 8
  %143 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %144 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %143, i32 0, i32 2
  %145 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %146 = load i32, i32* @queue, align 4
  %147 = call i32 @TAILQ_REMOVE(i32* %144, %struct.vscsi_xfer* %145, i32 %146)
  %148 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %149 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %148, i32 0, i32 1
  %150 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %151 = load i32, i32* @queue, align 4
  %152 = call i32 @TAILQ_INSERT_TAIL(i32* %149, %struct.vscsi_xfer* %150, i32 %151)
  %153 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %154 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %157 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %union.ccb*, %union.ccb** %4, align 8
  %160 = load i32, i32* @vscsi_scsi_command, align 4
  %161 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %7, align 8
  %162 = call i32 @bus_dmamap_load_ccb(i32 %155, i32 %158, %union.ccb* %159, i32 %160, %struct.vscsi_xfer* %161, i32 0)
  br label %171

163:                                              ; preds = %2
  %164 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %165 = load %union.ccb*, %union.ccb** %4, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %163, %122, %94, %81, %18
  %169 = load %union.ccb*, %union.ccb** %4, align 8
  %170 = call i32 @xpt_done(%union.ccb* %169)
  br label %171

171:                                              ; preds = %168, %139, %86
  ret void
}

declare dso_local %struct.vscsi_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @vscsi_task_management(%struct.vscsi_softc*, %union.ccb*) #1

declare dso_local %struct.vscsi_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
