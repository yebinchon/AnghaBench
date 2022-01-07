; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_detach_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_detach_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type opaque
%struct.ccb_setasync = type { %struct.cam_sim*, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { i32 }

@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@isp_cam_async = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"isp_reap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @isp_detach_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_detach_chan(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %struct.ccb_setasync, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %13 = call i32 @ISP_GET_PC(%struct.TYPE_11__* %9, i32 %10, %struct.cam_sim* %11, %struct.cam_sim* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %17 = bitcast %struct.cam_path* %16 to %struct.cam_sim*
  %18 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %19 = bitcast %struct.cam_path* %18 to %struct.cam_sim*
  %20 = call i32 @ISP_GET_PC(%struct.TYPE_11__* %14, i32 %15, %struct.cam_sim* %17, %struct.cam_sim* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ISP_GET_PC_ADDR(%struct.TYPE_11__* %21, i32 %22, i32* %23, i32* %24)
  %26 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 3
  %27 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %28 = bitcast %struct.cam_path* %27 to %struct.cam_sim*
  %29 = call i32 @xpt_setup_ccb(%struct.TYPE_12__* %26, %struct.cam_sim* %28, i32 5)
  %30 = load i32, i32* @XPT_SASYNC_CB, align 4
  %31 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @isp_cam_async, align 4
  %35 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %37 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 0
  store %struct.cam_sim* %36, %struct.cam_sim** %37, align 8
  %38 = bitcast %struct.ccb_setasync* %7 to %union.ccb*
  %39 = call i32 @xpt_action(%union.ccb* %38)
  %40 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %41 = bitcast %struct.cam_path* %40 to %struct.cam_sim*
  %42 = call i32 @xpt_free_path(%struct.cam_sim* %41)
  %43 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %44 = call i32 @cam_sim_path(%struct.cam_sim* %43)
  %45 = call i32 @xpt_bus_deregister(i32 %44)
  %46 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @cam_sim_free(%struct.cam_sim* %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wakeup(i32 %53)
  br label %55

55:                                               ; preds = %59, %2
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* @PRIBIO, align 4
  %64 = call i32 @mtx_sleep(%struct.TYPE_11__* %60, i32* %62, i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %55

65:                                               ; preds = %55
  ret void
}

declare dso_local i32 @ISP_GET_PC(%struct.TYPE_11__*, i32, %struct.cam_sim*, %struct.cam_sim*) #1

declare dso_local i32 @ISP_GET_PC_ADDR(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_12__*, %struct.cam_sim*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @mtx_sleep(%struct.TYPE_11__*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
