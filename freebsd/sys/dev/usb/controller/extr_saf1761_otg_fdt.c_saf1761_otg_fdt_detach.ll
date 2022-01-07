; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_fdt.c_saf1761_otg_fdt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_fdt.c_saf1761_otg_fdt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32*, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @saf1761_otg_fdt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_otg_fdt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.saf1761_otg_softc* @device_get_softc(i32 %5)
  store %struct.saf1761_otg_softc* %6, %struct.saf1761_otg_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_delete_children(i32 %7)
  %9 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %10 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %15 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %20 = call i32 @saf1761_otg_uninit(%struct.saf1761_otg_softc* %19)
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %23 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_teardown_intr(i32 %21, i32* %24, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %30 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %18, %13, %1
  %32 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %33 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %40 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bus_release_resource(i32 %37, i32 %38, i32 0, i32* %41)
  %43 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %44 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %47 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 0, i32* %55)
  %57 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %58 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %61 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %60, i32 0, i32 0
  %62 = call i32 @usb_bus_mem_free_all(i32* %61, i32* null)
  ret i32 0
}

declare dso_local %struct.saf1761_otg_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @saf1761_otg_uninit(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
