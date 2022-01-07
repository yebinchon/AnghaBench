; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, i32, i32, i32*, i32, i32*, %struct.ifnet*, i32*, i32, i32 }
%struct.ifnet = type { i32 }

@taskqueue_swi = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.stge_softc* @device_get_softc(i32 %5)
  store %struct.stge_softc* %6, %struct.stge_softc** %3, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %7, i32 0, i32 6
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %15 = call i32 @STGE_LOCK(%struct.stge_softc* %14)
  %16 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %19 = call i32 @stge_stop(%struct.stge_softc* %18)
  %20 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %21 = call i32 @STGE_UNLOCK(%struct.stge_softc* %20)
  %22 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %22, i32 0, i32 9
  %24 = call i32 @callout_drain(i32* %23)
  %25 = load i32, i32* @taskqueue_swi, align 4
  %26 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %26, i32 0, i32 8
  %28 = call i32 @taskqueue_drain(i32 %25, i32* %27)
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = call i32 @ether_ifdetach(%struct.ifnet* %29)
  br label %31

31:                                               ; preds = %13, %1
  %32 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %39 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @device_delete_child(i32 %37, i32* %40)
  %42 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %42, i32 0, i32 7
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @bus_generic_detach(i32 %45)
  %47 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %48 = call i32 @stge_dma_free(%struct.stge_softc* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = icmp ne %struct.ifnet* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @if_free(%struct.ifnet* %52)
  %54 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %54, i32 0, i32 6
  store %struct.ifnet* null, %struct.ifnet** %55, align 8
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %69 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @bus_teardown_intr(i32 %62, i32 %67, i32* %70)
  %72 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %73 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %61, %56
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %80 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @bus_release_resources(i32 %75, i32 %78, i32* %81)
  %83 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %84 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %83, i32 0, i32 2
  %85 = call i32 @mtx_destroy(i32* %84)
  %86 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %86, i32 0, i32 1
  %88 = call i32 @mtx_destroy(i32* %87)
  ret i32 0
}

declare dso_local %struct.stge_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

declare dso_local i32 @stge_stop(%struct.stge_softc*) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @stge_dma_free(%struct.stge_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
