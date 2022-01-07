; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32, i32, i32 }

@VTCON_FLAG_DETACHED = common dso_local global i32 0, align 4
@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtcon_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtcon_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vtcon_softc* @device_get_softc(i32 %4)
  store %struct.vtcon_softc* %5, %struct.vtcon_softc** %3, align 8
  %6 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %7 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %6)
  %8 = load i32, i32* @VTCON_FLAG_DETACHED, align 4
  %9 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @device_is_attached(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %18 = call i32 @vtcon_stop(%struct.vtcon_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %21 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %20)
  %22 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %23 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @taskqueue_thread, align 4
  %30 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %30, i32 0, i32 3
  %32 = call i32 @taskqueue_drain(i32 %29, i32* %31)
  %33 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %34 = call i32 @vtcon_ctrl_deinit(%struct.vtcon_softc* %33)
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %37 = call i32 @vtcon_destroy_ports(%struct.vtcon_softc* %36)
  %38 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %38, i32 0, i32 2
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %41, i32 0, i32 1
  %43 = call i32 @mtx_destroy(i32* %42)
  ret i32 0
}

declare dso_local %struct.vtcon_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @vtcon_stop(%struct.vtcon_softc*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @vtcon_ctrl_deinit(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_destroy_ports(%struct.vtcon_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
