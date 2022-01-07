; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i32*, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"sis mutex not initialized\00", align 1
@sis_res_spec = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sis_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.sis_softc* @device_get_softc(i32 %5)
  store %struct.sis_softc* %6, %struct.sis_softc** %3, align 8
  %7 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %11, i32 0, i32 5
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %19 = call i32 @SIS_LOCK(%struct.sis_softc* %18)
  %20 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %21 = call i32 @sis_stop(%struct.sis_softc* %20)
  %22 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %23 = call i32 @SIS_UNLOCK(%struct.sis_softc* %22)
  %24 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %25 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %24, i32 0, i32 4
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call i32 @ether_ifdetach(%struct.ifnet* %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @device_delete_child(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @bus_generic_detach(i32 %41)
  %43 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %44 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %50 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %55 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bus_teardown_intr(i32 %48, i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %47, %40
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @sis_res_spec, align 4
  %61 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %62 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_release_resources(i32 %59, i32 %60, i32* %63)
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = icmp ne %struct.ifnet* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = call i32 @if_free(%struct.ifnet* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %72 = call i32 @sis_dma_free(%struct.sis_softc* %71)
  %73 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %74 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_destroy(i32* %74)
  ret i32 0
}

declare dso_local %struct.sis_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @SIS_LOCK(%struct.sis_softc*) #1

declare dso_local i32 @sis_stop(%struct.sis_softc*) #1

declare dso_local i32 @SIS_UNLOCK(%struct.sis_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @sis_dma_free(%struct.sis_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
