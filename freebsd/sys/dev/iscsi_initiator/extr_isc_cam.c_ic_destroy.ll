; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_cam.c_ic_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_cam.c_ic_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"name=%s unit=%d\00", align 1
@XPT_RESET_BUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@AC_LOST_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ic_destroy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = call i32 @debug_called(i32 8)
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @cam_sim_name(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cam_sim_unit(i32 %15)
  %17 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i32 @CAM_LOCK(%struct.TYPE_5__* %18)
  %20 = load i32, i32* @XPT_RESET_BUS, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @xpt_async(i32 %20, i32* %23, i32* null)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @xpt_free_path(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cam_sim_path(i32 %31)
  %33 = call i32 @xpt_bus_deregister(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @cam_sim_free(i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = call i32 @CAM_UNLOCK(%struct.TYPE_5__* %39)
  %41 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local i32 @cam_sim_name(i32) #1

declare dso_local i32 @cam_sim_unit(i32) #1

declare dso_local i32 @CAM_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @xpt_async(i32, i32*, i32*) #1

declare dso_local i32 @xpt_free_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @CAM_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
