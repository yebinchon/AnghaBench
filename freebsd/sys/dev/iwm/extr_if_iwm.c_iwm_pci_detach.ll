; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iwm_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.iwm_softc* @device_get_softc(i32 %4)
  store %struct.iwm_softc* %5, %struct.iwm_softc** %3, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bus_teardown_intr(i32 %11, i32* %14, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @rman_get_rid(i32* %23)
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %26 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_release_resource(i32 %19, i32 %20, i32 %24, i32* %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @pci_release_msi(i32 %29)
  br label %31

31:                                               ; preds = %10, %1
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @rman_get_rid(i32* %41)
  %43 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %44 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_release_resource(i32 %37, i32 %38, i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.iwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
