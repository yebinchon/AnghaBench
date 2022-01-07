; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_xhci.c_generic_xhci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_xhci.c_generic_xhci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_xhci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.xhci_softc* @device_get_softc(i32 %5)
  store %struct.xhci_softc* %6, %struct.xhci_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_delete_children(i32 %7)
  %9 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_teardown_intr(i32 %19, i32* %22, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %13, %1
  %37 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SYS_RES_IRQ, align 4
  %44 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_rid(i32* %46)
  %48 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %49 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resource(i32 %42, i32 %43, i32 %47, i32* %50)
  %52 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %56 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SYS_RES_MEMORY, align 4
  %62 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %63 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @rman_get_rid(i32* %64)
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 %65, i32* %68)
  %70 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %74 = call i32 @xhci_uninit(%struct.xhci_softc* %73)
  ret i32 0
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @xhci_uninit(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
