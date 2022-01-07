; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_if_ral_pci.c_ral_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_if_ral_pci.c_ral_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ral_pci_softc = type { i32, i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.ral_pci_softc*)* }
%struct.TYPE_4__ = type { %struct.rt2560_softc }
%struct.rt2560_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ral_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ral_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ral_pci_softc*, align 8
  %4 = alloca %struct.rt2560_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ral_pci_softc* @device_get_softc(i32 %5)
  store %struct.ral_pci_softc* %6, %struct.ral_pci_softc** %3, align 8
  %7 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.rt2560_softc* %9, %struct.rt2560_softc** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @bus_child_present(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.rt2560_softc*, %struct.rt2560_softc** %4, align 8
  %16 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_teardown_intr(i32 %22, i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ral_pci_softc*)*, i32 (%struct.ral_pci_softc*)** %34, align 8
  %36 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %37 = call i32 %35(%struct.ral_pci_softc* %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @bus_generic_detach(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rman_get_rid(i32 %44)
  %46 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %45, i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @pci_release_msi(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rman_get_rid(i32 %56)
  %58 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %57, i32 %60)
  ret i32 0
}

declare dso_local %struct.ral_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
