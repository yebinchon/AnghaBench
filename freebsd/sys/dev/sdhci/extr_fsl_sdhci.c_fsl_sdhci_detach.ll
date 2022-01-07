; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i32*, i32*, i32*, i32, i64, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sdhci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sdhci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %4)
  store %struct.fsl_sdhci_softc* %5, %struct.fsl_sdhci_softc** %3, align 8
  %6 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %6, i32 0, i32 6
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @sdhci_fdt_gpio_teardown(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %16, i32 0, i32 5
  %18 = call i32 @callout_drain(i32* %17)
  %19 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %24, i32 0, i32 3
  %26 = call i32 @sdhci_cleanup_slot(i32* %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_teardown_intr(i32 %33, i32* %36, i32* %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %43 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @SYS_RES_IRQ, align 4
  %49 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @rman_get_rid(i32* %51)
  %53 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %47, i32 %48, i32 %52, i32* %55)
  br label %57

57:                                               ; preds = %46, %41
  %58 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %66 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @rman_get_rid(i32* %67)
  %69 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 %68, i32* %71)
  br label %73

73:                                               ; preds = %62, %57
  ret i32 0
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @sdhci_fdt_gpio_teardown(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @sdhci_cleanup_slot(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
