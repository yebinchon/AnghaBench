; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_update_console_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_update_console_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { %struct.vtcon_softc_port* }
%struct.vtcon_softc_port = type { %struct.vtcon_port* }
%struct.vtcon_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*)* @vtcon_port_update_console_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_update_console_size(%struct.vtcon_softc* %0) #0 {
  %2 = alloca %struct.vtcon_softc*, align 8
  %3 = alloca %struct.vtcon_port*, align 8
  %4 = alloca %struct.vtcon_softc_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %2, align 8
  %7 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %8 = call i32 @vtcon_get_console_size(%struct.vtcon_softc* %7, i32* %5, i32* %6)
  %9 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %9, i32 0, i32 0
  %11 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %10, align 8
  %12 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %11, i64 0
  store %struct.vtcon_softc_port* %12, %struct.vtcon_softc_port** %4, align 8
  %13 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %14 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %13)
  %15 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %4, align 8
  %16 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %15, i32 0, i32 0
  %17 = load %struct.vtcon_port*, %struct.vtcon_port** %16, align 8
  store %struct.vtcon_port* %17, %struct.vtcon_port** %3, align 8
  %18 = load %struct.vtcon_port*, %struct.vtcon_port** %3, align 8
  %19 = icmp ne %struct.vtcon_port* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.vtcon_port*, %struct.vtcon_port** %3, align 8
  %22 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %21)
  %23 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %24 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %23)
  %25 = load %struct.vtcon_port*, %struct.vtcon_port** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vtcon_port_change_size(%struct.vtcon_port* %25, i32 %26, i32 %27)
  %29 = load %struct.vtcon_port*, %struct.vtcon_port** %3, align 8
  %30 = call i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port* %29)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %33 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %32)
  br label %34

34:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @vtcon_get_console_size(%struct.vtcon_softc*, i32*, i32*) #1

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @VTCON_PORT_LOCK(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_port_change_size(%struct.vtcon_port*, i32, i32) #1

declare dso_local i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
