; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_release_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { %struct.TYPE_2__*, i32, i32, i32*, i64 }
%struct.TYPE_2__ = type { i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@PCI_MAX_BAR = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocs_softc*)* @ocs_release_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_release_bus(%struct.ocs_softc* %0) #0 {
  %2 = alloca %struct.ocs_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.ocs_softc* %0, %struct.ocs_softc** %2, align 8
  %4 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %5 = icmp ne %struct.ocs_softc* null, %4
  br i1 %5, label %6, label %83

6:                                                ; preds = %1
  %7 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %8 = call i32 @ocs_intr_teardown(%struct.ocs_softc* %7)
  %9 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %6
  %14 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SYS_RES_IRQ, align 4
  %18 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @rman_get_rid(i32* %20)
  %22 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @bus_release_resource(i32 %16, i32 %17, i32 %21, i32* %24)
  %26 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %13
  %31 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_release_msi(i32 %33)
  %35 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %13
  %38 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %6
  %41 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_dma_tag_destroy(i32 %43)
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %79, %40
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @PCI_MAX_BAR, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SYS_RES_MEMORY, align 4
  %63 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ocs_softc*, %struct.ocs_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @bus_release_resource(i32 %61, i32 %62, i32 %69, i32* %76)
  br label %78

78:                                               ; preds = %58, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %45

82:                                               ; preds = %45
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

declare dso_local i32 @ocs_intr_teardown(%struct.ocs_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
