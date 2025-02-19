; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32*, i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCI_XHCI_CBMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xhci_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.xhci_softc* @device_get_softc(i32 %4)
  store %struct.xhci_softc* %5, %struct.xhci_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %8, i32 0, i32 4
  %10 = call i32 @usb_callout_drain(i32* %9)
  %11 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %12 = call i32 @xhci_halt_controller(%struct.xhci_softc* %11)
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %14 = call i32 @xhci_reset_controller(%struct.xhci_softc* %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @pci_disable_busmaster(i32 %15)
  %17 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %23 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_teardown_intr(i32 %27, i32* %30, i32* %33)
  %35 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %26, %21, %1
  %38 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %39 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @rman_get_rid(i32* %47)
  %49 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %48, i32* %51)
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %54 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @pci_release_msi(i32 %55)
  br label %57

57:                                               ; preds = %42, %37
  %58 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = load i32, i32* @PCI_XHCI_CBMEM, align 4
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 %65, i32* %68)
  %70 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %62, %57
  %73 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %74 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @SYS_RES_MEMORY, align 4
  %80 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %81 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @rman_get_rid(i32* %82)
  %84 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %85 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_release_resource(i32 %78, i32 %79, i32 %83, i32* %86)
  %88 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %89 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %77, %72
  %91 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %92 = call i32 @xhci_uninit(%struct.xhci_softc* %91)
  ret i32 0
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @xhci_halt_controller(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_reset_controller(%struct.xhci_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @xhci_uninit(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
