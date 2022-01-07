; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_xenon_softc = type { i32*, i32, i32, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_xenon_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_xenon_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %4)
  store %struct.sdhci_xenon_softc* %5, %struct.sdhci_xenon_softc** %3, align 8
  %6 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @sdhci_fdt_gpio_teardown(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @bus_generic_detach(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bus_teardown_intr(i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rman_get_rid(i32 %30)
  %32 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %31, i32 %34)
  %36 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @sdhci_cleanup_slot(i32* %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %43 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rman_get_rid(i32 %44)
  %46 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %47 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %45, i32 %48)
  %50 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %51 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @M_DEVBUF, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  %55 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %3, align 8
  %56 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  ret i32 0
}

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local i32 @sdhci_fdt_gpio_teardown(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @sdhci_cleanup_slot(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
