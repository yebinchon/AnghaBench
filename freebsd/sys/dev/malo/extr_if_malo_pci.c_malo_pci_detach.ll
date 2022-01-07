; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo_pci.c_malo_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo_pci.c_malo_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_pci_softc = type { i64, i32*, i32, i32*, i32, i32*, %struct.malo_softc }
%struct.malo_softc = type { i32, i32 }

@MALO_MSI_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @malo_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.malo_pci_softc*, align 8
  %5 = alloca %struct.malo_softc*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.malo_pci_softc* @device_get_softc(i32 %6)
  store %struct.malo_pci_softc* %7, %struct.malo_pci_softc** %4, align 8
  %8 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %9 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %8, i32 0, i32 6
  store %struct.malo_softc* %9, %struct.malo_softc** %5, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @bus_child_present(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %16 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %18 = call i32 @malo_detach(%struct.malo_softc* %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @bus_generic_detach(i32 %19)
  %21 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %22 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_teardown_intr(i32 %26, i32 %31, i32 %36)
  br label %66

38:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MALO_MSI_MESSAGES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %53 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bus_teardown_intr(i32 %44, i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @pci_release_msi(i32 %64)
  br label %66

66:                                               ; preds = %63, %25
  %67 = load i32, i32* %2, align 4
  %68 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %69 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %72 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resources(i32 %67, i32 %70, i32* %73)
  %75 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %76 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bus_dma_tag_destroy(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %81 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.malo_pci_softc*, %struct.malo_pci_softc** %4, align 8
  %84 = getelementptr inbounds %struct.malo_pci_softc, %struct.malo_pci_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_release_resources(i32 %79, i32 %82, i32* %85)
  ret i32 0
}

declare dso_local %struct.malo_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @malo_detach(%struct.malo_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
