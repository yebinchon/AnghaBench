; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32, %struct.vtcon_softc_port*, i32 }
%struct.vtcon_softc_port = type { %struct.vtcon_port* }
%struct.vtcon_port = type { i32 }

@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*)* @vtcon_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_enable_interrupts(%struct.vtcon_softc* %0) #0 {
  %2 = alloca %struct.vtcon_softc*, align 8
  %3 = alloca %struct.vtcon_softc_port*, align 8
  %4 = alloca %struct.vtcon_port*, align 8
  %5 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %2, align 8
  %6 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %7 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %6)
  %8 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @virtqueue_enable_intr(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %27, i32 0, i32 2
  %29 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %29, i64 %31
  store %struct.vtcon_softc_port* %32, %struct.vtcon_softc_port** %3, align 8
  %33 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %34 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %33, i32 0, i32 0
  %35 = load %struct.vtcon_port*, %struct.vtcon_port** %34, align 8
  store %struct.vtcon_port* %35, %struct.vtcon_port** %4, align 8
  %36 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %37 = icmp eq %struct.vtcon_port* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %41 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %40)
  %42 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %43 = call i32 @vtcon_port_enable_intr(%struct.vtcon_port* %42)
  %44 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %45 = call i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port* %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %51 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %50)
  ret void
}

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @virtqueue_enable_intr(i32) #1

declare dso_local i32 @VTCON_PORT_LOCK(%struct.vtcon_port*) #1

declare dso_local i32 @vtcon_port_enable_intr(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
