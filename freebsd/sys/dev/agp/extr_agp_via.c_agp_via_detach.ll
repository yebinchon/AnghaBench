; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_via_softc = type { i32, i32, i32* }

@REG_GARTCTRL = common dso_local global i64 0, align 8
@REG_ATTBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_via_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_via_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_via_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.agp_via_softc* @device_get_softc(i32 %4)
  store %struct.agp_via_softc* %5, %struct.agp_via_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @agp_free_cdev(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %10 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @REG_GARTCTRL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_write_config(i32 %8, i32 %14, i32 0, i32 4)
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %18 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @REG_ATTBASE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_write_config(i32 %16, i32 %22, i32 0, i32 4)
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %26 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AGP_SET_APERTURE(i32 %24, i32 %27)
  %29 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %30 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @agp_free_gatt(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @agp_free_res(i32 %33)
  ret i32 0
}

declare dso_local %struct.agp_via_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
