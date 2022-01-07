; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_abort_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_abort_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ahd_softc = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { %union.ccb* }

@CAM_UA_ABORT = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_PATH_INVALID = common dso_local global i8* null, align 8
@CAM_REQ_ABORTED = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.cam_sim*, %union.ccb*)* @ahd_abort_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_abort_ccb(%struct.ahd_softc* %0, %struct.cam_sim* %1, %union.ccb* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %union.ccb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %5, align 8
  store %union.ccb* %2, %union.ccb** %6, align 8
  %8 = load %union.ccb*, %union.ccb** %6, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %union.ccb*, %union.ccb** %10, align 8
  store %union.ccb* %11, %union.ccb** %7, align 8
  %12 = load %union.ccb*, %union.ccb** %7, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_hdr*
  %14 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %21 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** @CAM_UA_ABORT, align 8
  %18 = load %union.ccb*, %union.ccb** %6, align 8
  %19 = bitcast %union.ccb* %18 to %struct.ccb_hdr*
  %20 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %23 = load %union.ccb*, %union.ccb** %6, align 8
  %24 = bitcast %union.ccb* %23 to %struct.ccb_hdr*
  %25 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %union.ccb*, %union.ccb** %6, align 8
  %28 = call i32 @xpt_done(%union.ccb* %27)
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
