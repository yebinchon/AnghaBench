; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_lun_rescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_lun_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cam_path = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"xpt_create_path status(%d) != CAM_REQ_CMP \0A\00", align 1
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@smartpqi_lunrescan_cb = common dso_local global i32 0, align 4
@CAM_FLAG_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqisrc_softstate*, i32, i32)* @smartpqi_lun_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_lun_rescan(%struct.pqisrc_softstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pqisrc_softstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cam_path*, align 8
  store %struct.pqisrc_softstate* %0, %struct.pqisrc_softstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %union.ccb* null, %union.ccb** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.cam_path* null, %struct.cam_path** %9, align 8
  %10 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %11, %union.ccb** %7, align 8
  %12 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %13 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cam_sim_path(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @DBG_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %union.ccb*, %union.ccb** %7, align 8
  %27 = call i32 @xpt_free_ccb(%union.ccb* %26)
  br label %50

28:                                               ; preds = %3
  %29 = load %union.ccb*, %union.ccb** %7, align 8
  %30 = call i32 @bzero(%union.ccb* %29, i32 8)
  %31 = load %union.ccb*, %union.ccb** %7, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_6__*
  %33 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %34 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %32, %struct.cam_path* %33, i32 5)
  %35 = load i32, i32* @XPT_SCAN_LUN, align 4
  %36 = load %union.ccb*, %union.ccb** %7, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @smartpqi_lunrescan_cb, align 4
  %40 = load %union.ccb*, %union.ccb** %7, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @CAM_FLAG_NONE, align 4
  %44 = load %union.ccb*, %union.ccb** %7, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %union.ccb*, %union.ccb** %7, align 8
  %48 = call i32 @xpt_action(%union.ccb* %47)
  %49 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @DBG_ERR(i8*, i64) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
