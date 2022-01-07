; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, %struct.ifnet*, i32*, i32, i32, i32*, i32*, i32*, i32 }
%struct.ifnet = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vte_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vte_softc* @device_get_softc(i32 %5)
  store %struct.vte_softc* %6, %struct.vte_softc** %3, align 8
  %7 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %15 = call i32 @VTE_LOCK(%struct.vte_softc* %14)
  %16 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %17 = call i32 @vte_stop(%struct.vte_softc* %16)
  %18 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %19 = call i32 @VTE_UNLOCK(%struct.vte_softc* %18)
  %20 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %20, i32 0, i32 8
  %22 = call i32 @callout_drain(i32* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = call i32 @ether_ifdetach(%struct.ifnet* %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @device_delete_child(i32 %31, i32* %34)
  %36 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @bus_generic_detach(i32 %39)
  %41 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %48 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %51 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_teardown_intr(i32 %46, i32* %49, i32* %52)
  %54 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %54, i32 0, i32 6
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %45, %38
  %57 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %58 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 0, i32* %66)
  %68 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %69 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %68, i32 0, i32 5
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %61, %56
  %71 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %72 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i32, i32* %2, align 4
  %77 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %78 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %81 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %84 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_release_resource(i32 %76, i32 %79, i32 %82, i32* %85)
  %87 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %88 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %75, %70
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = icmp ne %struct.ifnet* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = call i32 @if_free(%struct.ifnet* %93)
  %95 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %96 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %95, i32 0, i32 1
  store %struct.ifnet* null, %struct.ifnet** %96, align 8
  br label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %99 = call i32 @vte_dma_free(%struct.vte_softc* %98)
  %100 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %101 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %100, i32 0, i32 0
  %102 = call i32 @mtx_destroy(i32* %101)
  ret i32 0
}

declare dso_local %struct.vte_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @VTE_LOCK(%struct.vte_softc*) #1

declare dso_local i32 @vte_stop(%struct.vte_softc*) #1

declare dso_local i32 @VTE_UNLOCK(%struct.vte_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @vte_dma_free(%struct.vte_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
