; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32, i64, i64, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"vge mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@VGE_FLAG_MSI = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vge_softc* @device_get_softc(i32 %5)
  store %struct.vge_softc* %6, %struct.vge_softc** %3, align 8
  %7 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %7, i32 0, i32 1
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %11, i32 0, i32 7
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = call i32 @ether_ifdetach(%struct.ifnet* %18)
  %20 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %21 = call i32 @VGE_LOCK(%struct.vge_softc* %20)
  %22 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %23 = call i32 @vge_stop(%struct.vge_softc* %22)
  %24 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %25 = call i32 @VGE_UNLOCK(%struct.vge_softc* %24)
  %26 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %26, i32 0, i32 6
  %28 = call i32 @callout_drain(i32* %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @device_delete_child(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @bus_generic_detach(i32 %41)
  %43 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %50 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bus_teardown_intr(i32 %48, i64 %51, i64 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VGE_FLAG_MSI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %73 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %61, %56
  %77 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %78 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VGE_FLAG_MSI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @pci_release_msi(i32 %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %88 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @SYS_RES_MEMORY, align 4
  %94 = call i32 @PCIR_BAR(i32 1)
  %95 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %96 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bus_release_resource(i32 %92, i32 %93, i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %91, %86
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = icmp ne %struct.ifnet* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %104 = call i32 @if_free(%struct.ifnet* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %107 = call i32 @vge_dma_free(%struct.vge_softc* %106)
  %108 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %109 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %108, i32 0, i32 1
  %110 = call i32 @mtx_destroy(i32* %109)
  ret i32 0
}

declare dso_local %struct.vge_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @VGE_LOCK(%struct.vge_softc*) #1

declare dso_local i32 @vge_stop(%struct.vge_softc*) #1

declare dso_local i32 @VGE_UNLOCK(%struct.vge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @vge_dma_free(%struct.vge_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
