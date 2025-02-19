; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32*, i32*, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vtpci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_detach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vtpci_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.vtpci_softc* @device_get_softc(i32* %7)
  store %struct.vtpci_softc* %8, %struct.vtpci_softc** %4, align 8
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @device_delete_child(i32* %14, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %13
  %22 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %26 = call i32 @vtpci_reset(%struct.vtpci_softc* %25)
  %27 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = call i32 @PCIR_BAR(i32 1)
  %35 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_release_resource(i32* %32, i32 %33, i32 %34, i32* %37)
  %39 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %31, %24
  %42 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @SYS_RES_IOPORT, align 4
  %49 = call i32 @PCIR_BAR(i32 0)
  %50 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_release_resource(i32* %47, i32 %48, i32 %49, i32* %52)
  %54 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @vtpci_reset(%struct.vtpci_softc*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
