; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_adjust_queue_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_adjust_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_relsim = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@RELSIM_ADJUST_OPENINGS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"XPT_REL_SIMQ failed stat=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smartpqi_adjust_queue_depth(%struct.cam_path* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccb_relsim, align 8
  store %struct.cam_path* %0, %struct.cam_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @DBG_INFO(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 0
  %8 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %9 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %7, %struct.cam_path* %8, i32 5)
  %10 = load i32, i32* @XPT_REL_SIMQ, align 4
  %11 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %14 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @RELSIM_ADJUST_OPENINGS, align 4
  %17 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = bitcast %struct.ccb_relsim* %5 to %union.ccb*
  %21 = call i32 @xpt_action(%union.ccb* %20)
  %22 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CAM_REQ_CMP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = call i32 @DBG_INFO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_INFO(i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
