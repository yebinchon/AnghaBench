; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_free_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_free_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }
%struct.vtpci_interrupt = type { i32, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtpci_softc*, %struct.vtpci_interrupt*)* @vtpci_free_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_free_interrupt(%struct.vtpci_softc* %0, %struct.vtpci_interrupt* %1) #0 {
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_interrupt*, align 8
  %5 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  store %struct.vtpci_interrupt* %1, %struct.vtpci_interrupt** %4, align 8
  %6 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %10 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %16 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %19 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_teardown_intr(i32 %14, i32* %17, i32* %20)
  %22 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %23 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %26 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %33 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %36 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %34, i32* %37)
  %39 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %40 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %42 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
