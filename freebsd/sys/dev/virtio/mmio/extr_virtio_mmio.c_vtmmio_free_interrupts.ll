; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_free_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_free_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32**, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtmmio_softc*)* @vtmmio_free_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtmmio_free_interrupts(%struct.vtmmio_softc* %0) #0 {
  %2 = alloca %struct.vtmmio_softc*, align 8
  store %struct.vtmmio_softc* %0, %struct.vtmmio_softc** %2, align 8
  %3 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %4 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bus_teardown_intr(i32 %10, i32* %15, i32* %18)
  br label %20

20:                                               ; preds = %7, %1
  %21 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 0, i32* %36)
  br label %38

38:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
