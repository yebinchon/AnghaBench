; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ehci_softc = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx_ehci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ehci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.imx_ehci_softc* @device_get_softc(i32 %7)
  store %struct.imx_ehci_softc* %8, %struct.imx_ehci_softc** %4, align 8
  %9 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %9, i32 0, i32 2
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_delete_children(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = call i32 @ehci_detach(%struct.TYPE_3__* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_teardown_intr(i32 %32, i32 %35, i32* %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %4, align 8
  %42 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 0, i32* %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %4, align 8
  %61 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 0, i32* %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @usb_bus_mem_free_all(i32* %66, i32* @ehci_iterate_hw_softc)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.imx_ehci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
