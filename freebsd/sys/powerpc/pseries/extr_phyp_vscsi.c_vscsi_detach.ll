; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_softc = type { i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vscsi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vscsi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vscsi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.vscsi_softc* @device_get_softc(i32 %5)
  store %struct.vscsi_softc* %6, %struct.vscsi_softc** %4, align 8
  %7 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %8 = icmp eq %struct.vscsi_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @cam_sim_path(i32* %22)
  %24 = call i32 @xpt_bus_deregister(i32 %23)
  %25 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @cam_sim_free(i32* %27, i32 %28)
  %30 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  br label %35

35:                                               ; preds = %16, %11
  %36 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @cam_simq_free(i32* %43)
  %45 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_destroy(i32* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.vscsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
