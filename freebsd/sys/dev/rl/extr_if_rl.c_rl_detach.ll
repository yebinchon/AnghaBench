; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i64, i32, i32, i64*, i64*, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"rl mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rl_softc* @device_get_softc(i32 %5)
  store %struct.rl_softc* %6, %struct.rl_softc** %3, align 8
  %7 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %7, i32 0, i32 9
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_initialized(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %19 = call i32 @RL_LOCK(%struct.rl_softc* %18)
  %20 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %21 = call i32 @rl_stop(%struct.rl_softc* %20)
  %22 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %23 = call i32 @RL_UNLOCK(%struct.rl_softc* %22)
  %24 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %24, i32 0, i32 8
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call i32 @ether_ifdetach(%struct.ifnet* %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @device_delete_child(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @bus_generic_detach(i32 %41)
  %43 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %44 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %43, i32 0, i32 6
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %52 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %51, i32 0, i32 5
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %57 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %56, i32 0, i32 6
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bus_teardown_intr(i32 %50, i64 %55, i64 %60)
  br label %62

62:                                               ; preds = %49, %40
  %63 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %64 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %63, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @SYS_RES_IRQ, align 4
  %72 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %73 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %72, i32 0, i32 5
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 0, i64 %76)
  br label %78

78:                                               ; preds = %69, %62
  %79 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %80 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32, i32* %2, align 4
  %85 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %86 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %89 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %92 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @bus_release_resource(i32 %84, i32 %87, i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = icmp ne %struct.ifnet* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = call i32 @if_free(%struct.ifnet* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %103 = call i32 @rl_dma_free(%struct.rl_softc* %102)
  %104 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %105 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %104, i32 0, i32 1
  %106 = call i32 @mtx_destroy(i32* %105)
  ret i32 0
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @rl_stop(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @rl_dma_free(%struct.rl_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
