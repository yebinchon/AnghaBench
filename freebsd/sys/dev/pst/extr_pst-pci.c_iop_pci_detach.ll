; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-pci.c_iop_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-pci.c_iop_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iop_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iop_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iop_softc* @device_get_softc(i32 %6)
  store %struct.iop_softc* %7, %struct.iop_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %17 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %20 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_teardown_intr(i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_IRQ, align 4
  %25 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %26 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 0, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = call i32 @PCIR_BAR(i32 0)
  %32 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %33 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %37 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %36, i32 0, i32 0
  %38 = call i32 @mtx_destroy(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %14, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.iop_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
