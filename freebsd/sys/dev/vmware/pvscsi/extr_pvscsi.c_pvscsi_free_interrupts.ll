; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_free_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_free_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i64, i32*, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*)* @pvscsi_free_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_free_interrupts(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %3 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_teardown_intr(i32 %10, i32* %13, i32* %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %30, i32* %33)
  br label %35

35:                                               ; preds = %23, %18
  %36 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %37 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_release_msi(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
