; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32, %struct.TYPE_2__, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@taskqueue_thread = common dso_local global i32 0, align 4
@VMCI_CONTROL_ADDR = common dso_local global i32 0, align 4
@VMCI_CONTROL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vmci_softc* @device_get_softc(i32 %4)
  store %struct.vmci_softc* %5, %struct.vmci_softc** %3, align 8
  %6 = call i32 (...) @vmci_qp_guest_endpoints_exit()
  %7 = call i32 (...) @vmci_util_exit()
  %8 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %9 = call i32 @vmci_dismantle_interrupts(%struct.vmci_softc* %8)
  %10 = call i32 (...) @vmci_components_cleanup()
  %11 = load i32, i32* @taskqueue_thread, align 4
  %12 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %12, i32 0, i32 6
  %14 = call i32 @taskqueue_drain(i32 %11, i32* %13)
  %15 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %15, i32 0, i32 5
  %17 = call i32 @mtx_destroy(i32* %16)
  %18 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VMCI_CONTROL_ADDR, align 4
  %30 = load i32, i32* @VMCI_CONTROL_RESET, align 4
  %31 = call i32 @bus_space_write_4(i32 %25, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %39, i32 0, i32 1
  %41 = call i32 @vmci_dma_free(%struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %44 = call i32 @vmci_unmap_bars(%struct.vmci_softc* %43)
  %45 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_destroy(i32* %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @pci_disable_busmaster(i32 %48)
  ret i32 0
}

declare dso_local %struct.vmci_softc* @device_get_softc(i32) #1

declare dso_local i32 @vmci_qp_guest_endpoints_exit(...) #1

declare dso_local i32 @vmci_util_exit(...) #1

declare dso_local i32 @vmci_dismantle_interrupts(%struct.vmci_softc*) #1

declare dso_local i32 @vmci_components_cleanup(...) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @vmci_dma_free(%struct.TYPE_2__*) #1

declare dso_local i32 @vmci_unmap_bars(%struct.vmci_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
