; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_determine_max_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_determine_max_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32 }
%struct.virtio_console_config = type { i32 }

@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@VTCON_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*, %struct.virtio_console_config*)* @vtcon_determine_max_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_determine_max_ports(%struct.vtcon_softc* %0, %struct.virtio_console_config* %1) #0 {
  %3 = alloca %struct.vtcon_softc*, align 8
  %4 = alloca %struct.virtio_console_config*, align 8
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %3, align 8
  store %struct.virtio_console_config* %1, %struct.virtio_console_config** %4, align 8
  %5 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %6 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.virtio_console_config*, %struct.virtio_console_config** %4, align 8
  %13 = getelementptr inbounds %struct.virtio_console_config, %struct.virtio_console_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VTCON_MAX_PORTS, align 4
  %16 = call i32 @min(i32 %14, i32 %15)
  %17 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %11
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
