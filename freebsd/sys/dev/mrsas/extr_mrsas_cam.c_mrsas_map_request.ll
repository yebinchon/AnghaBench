; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_map_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32 }
%struct.mrsas_mpt_cmd = type { i64, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.ccb = type { i32 }
%struct.cam_sim = type { i32 }

@mrsas_data_load_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bus_dmamap_load(): retcode = %d\0A\00", align 1
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"request load in progress\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_map_request(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1, %union.ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca %struct.mrsas_mpt_cmd*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cam_sim*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %11 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cam_sim* @xpt_path_sim(i32 %15)
  store %struct.cam_sim* %16, %struct.cam_sim** %9, align 8
  %17 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %26 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @mrsas_data_load_cb, align 4
  %38 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %39 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %40 = call i64 @bus_dmamap_load(i32 %27, i32 %30, i32* %33, i32 %36, i32 %37, %struct.mrsas_mpt_cmd* %38, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46, %21
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @EINPROGRESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %58 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %62 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %63 = call i32 @mrsas_freeze_simq(%struct.mrsas_mpt_cmd* %61, %struct.cam_sim* %62)
  br label %64

64:                                               ; preds = %56, %52
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %74

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.cam_sim* @xpt_path_sim(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mrsas_mpt_cmd*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mrsas_freeze_simq(%struct.mrsas_mpt_cmd*, %struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
