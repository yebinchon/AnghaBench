; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32*, i32, i32, i32*, i32*, i32*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@NGE_FLAG_DETACH = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.nge_softc* @device_get_softc(i32 %5)
  store %struct.nge_softc* %6, %struct.nge_softc** %3, align 8
  %7 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %7, i32 0, i32 8
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %15 = call i32 @NGE_LOCK(%struct.nge_softc* %14)
  %16 = load i32, i32* @NGE_FLAG_DETACH, align 4
  %17 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %22 = call i32 @nge_stop(%struct.nge_softc* %21)
  %23 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %24 = call i32 @NGE_UNLOCK(%struct.nge_softc* %23)
  %25 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %26 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %25, i32 0, i32 6
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = icmp ne %struct.ifnet* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @ether_ifdetach(%struct.ifnet* %31)
  br label %33

33:                                               ; preds = %30, %13
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %42 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @device_delete_child(i32 %40, i32* %43)
  %45 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @bus_generic_detach(i32 %48)
  %50 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %57 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %60 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_teardown_intr(i32 %55, i32* %58, i32* %61)
  br label %63

63:                                               ; preds = %54, %47
  %64 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @SYS_RES_IRQ, align 4
  %71 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %69, i32 %70, i32 0, i32* %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %83 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %86 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %89 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @bus_release_resource(i32 %81, i32 %84, i32 %87, i32* %90)
  br label %92

92:                                               ; preds = %80, %75
  %93 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %94 = call i32 @nge_dma_free(%struct.nge_softc* %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = icmp ne %struct.ifnet* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = call i32 @if_free(%struct.ifnet* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %102 = call i32 @NGE_LOCK_DESTROY(%struct.nge_softc* %101)
  ret i32 0
}

declare dso_local %struct.nge_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @NGE_LOCK(%struct.nge_softc*) #1

declare dso_local i32 @nge_stop(%struct.nge_softc*) #1

declare dso_local i32 @NGE_UNLOCK(%struct.nge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @nge_dma_free(%struct.nge_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @NGE_LOCK_DESTROY(%struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
