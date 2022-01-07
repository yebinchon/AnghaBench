; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_detach_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_detach_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.cam_sim*, %struct.cam_path*, i32, i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @ocs_detach_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_detach_port(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.cam_path*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  store %struct.cam_sim* null, %struct.cam_sim** %6, align 8
  store %struct.cam_path* null, %struct.cam_path** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_9__* @FCPORT(%struct.TYPE_8__* %8, i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.cam_sim*, %struct.cam_sim** %12, align 8
  store %struct.cam_sim* %13, %struct.cam_sim** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.cam_path*, %struct.cam_path** %15, align 8
  store %struct.cam_path* %16, %struct.cam_path** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = call i32 @callout_drain(i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i32 @ocs_ldt_task(%struct.TYPE_9__* %20, i32 0)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.cam_sim*, %struct.cam_sim** %23, align 8
  %25 = icmp ne %struct.cam_sim* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = call i32 @ocs_tgt_resource_abort(%struct.TYPE_8__* %30, i32* %32)
  %34 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %35 = icmp ne %struct.cam_path* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* @AC_LOST_DEVICE, align 4
  %38 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %39 = call i32 @xpt_async(i32 %37, %struct.cam_path* %38, i32* null)
  %40 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %41 = call i32 @xpt_free_path(%struct.cam_path* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store %struct.cam_path* null, %struct.cam_path** %43, align 8
  br label %44

44:                                               ; preds = %36, %26
  %45 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %46 = call i32 @cam_sim_path(%struct.cam_sim* %45)
  %47 = call i32 @xpt_bus_deregister(i32 %46)
  %48 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @cam_sim_free(%struct.cam_sim* %48, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.cam_sim* null, %struct.cam_sim** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  br label %56

56:                                               ; preds = %44, %2
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @FCPORT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ocs_ldt_task(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ocs_tgt_resource_abort(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
