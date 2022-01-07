; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_softc = type { i32, i32, i32*, i32*, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SDHCI_QUIRK_LOWER_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.sdhci_pci_softc* @device_get_softc(i32 %5)
  store %struct.sdhci_pci_softc* %6, %struct.sdhci_pci_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bus_teardown_intr(i32 %7, i32 %10, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SYS_RES_IRQ, align 4
  %17 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @rman_get_rid(i32 %19)
  %21 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_release_resource(i32 %15, i32 %16, i32 %20, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @pci_release_msi(i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %59, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @sdhci_cleanup_slot(i32* %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rman_get_rid(i32 %49)
  %51 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %33
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %64 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SDHCI_QUIRK_LOWER_FREQUENCY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @sdhci_restore_frequency(i32 %70)
  br label %72

72:                                               ; preds = %69, %62
  ret i32 0
}

declare dso_local %struct.sdhci_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @sdhci_cleanup_slot(i32*) #1

declare dso_local i32 @sdhci_restore_frequency(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
