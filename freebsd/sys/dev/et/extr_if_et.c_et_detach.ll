; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ET_FLAG_MSI = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @et_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.et_softc* @device_get_softc(i32 %4)
  store %struct.et_softc* %5, %struct.et_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @device_is_attached(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %11 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ether_ifdetach(i32* %12)
  %14 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %15 = call i32 @ET_LOCK(%struct.et_softc* %14)
  %16 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %17 = call i32 @et_stop(%struct.et_softc* %16)
  %18 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %19 = call i32 @ET_UNLOCK(%struct.et_softc* %18)
  %20 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %21 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %20, i32 0, i32 7
  %22 = call i32 @callout_drain(i32* %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %25 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %31 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @device_delete_child(i32 %29, i32* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @bus_generic_detach(i32 %35)
  %37 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %38 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %44 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %47 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_teardown_intr(i32 %42, i32* %45, i32* %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %52 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %59 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @rman_get_rid(i32* %60)
  %62 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %63 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 %61, i32* %64)
  br label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %68 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ET_FLAG_MSI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @pci_release_msi(i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %78 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @SYS_RES_MEMORY, align 4
  %84 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %85 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @rman_get_rid(i32* %86)
  %88 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %89 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @bus_release_resource(i32 %82, i32 %83, i32 %87, i32* %90)
  br label %92

92:                                               ; preds = %81, %76
  %93 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %94 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %99 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @if_free(i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %104 = call i32 @et_dma_free(%struct.et_softc* %103)
  %105 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %106 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %105, i32 0, i32 1
  %107 = call i32 @mtx_destroy(i32* %106)
  ret i32 0
}

declare dso_local %struct.et_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @et_stop(%struct.et_softc*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @et_dma_free(%struct.et_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
