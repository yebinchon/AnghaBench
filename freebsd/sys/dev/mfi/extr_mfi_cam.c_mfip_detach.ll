; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfip_softc = type { i64, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@MFIP_STATE_RESCAN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MFIP_STATE_DETACH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfip_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfip_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfip_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mfip_softc* @device_get_softc(i32 %5)
  store %struct.mfip_softc* %6, %struct.mfip_softc** %4, align 8
  %7 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %8 = icmp eq %struct.mfip_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %82

11:                                               ; preds = %1
  %12 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MFIP_STATE_RESCAN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %11
  %30 = load i64, i64* @MFIP_STATE_DETACH, align 8
  %31 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %29
  %47 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mtx_lock(i32* %50)
  %52 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @cam_sim_path(i32* %54)
  %56 = call i32 @xpt_bus_deregister(i32 %55)
  %57 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @cam_sim_free(i32* %59, i32 %60)
  %62 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %63 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @mtx_unlock(i32* %67)
  br label %69

69:                                               ; preds = %46, %29
  %70 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @cam_simq_free(i32* %77)
  %79 = load %struct.mfip_softc*, %struct.mfip_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %69
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %22, %9
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.mfip_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @cam_simq_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
