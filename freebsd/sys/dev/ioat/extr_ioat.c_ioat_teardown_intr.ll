; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i32, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_softc*)* @ioat_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_teardown_intr(%struct.ioat_softc* %0) #0 {
  %2 = alloca %struct.ioat_softc*, align 8
  store %struct.ioat_softc* %0, %struct.ioat_softc** %2, align 8
  %3 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_teardown_intr(i32 %10, i32* %13, i32* %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @rman_get_rid(i32* %30)
  %32 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %31, i32* %34)
  br label %36

36:                                               ; preds = %23, %18
  %37 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_release_msi(i32 %39)
  ret i32 0
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
