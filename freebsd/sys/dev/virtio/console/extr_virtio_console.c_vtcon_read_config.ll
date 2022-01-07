; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32 }
%struct.virtio_console_config = type { i32 }

@VIRTIO_CONSOLE_F_SIZE = common dso_local global i32 0, align 4
@cols = common dso_local global i32 0, align 4
@rows = common dso_local global i32 0, align 4
@VIRTIO_CONSOLE_F_MULTIPORT = common dso_local global i32 0, align 4
@max_nr_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*, %struct.virtio_console_config*)* @vtcon_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_read_config(%struct.vtcon_softc* %0, %struct.virtio_console_config* %1) #0 {
  %3 = alloca %struct.vtcon_softc*, align 8
  %4 = alloca %struct.virtio_console_config*, align 8
  %5 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %3, align 8
  store %struct.virtio_console_config* %1, %struct.virtio_console_config** %4, align 8
  %6 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.virtio_console_config*, %struct.virtio_console_config** %4, align 8
  %10 = call i32 @bzero(%struct.virtio_console_config* %9, i32 4)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VIRTIO_CONSOLE_F_SIZE, align 4
  %13 = load i32, i32* @cols, align 4
  %14 = load %struct.virtio_console_config*, %struct.virtio_console_config** %4, align 8
  %15 = call i32 @VTCON_GET_CONFIG(i32 %11, i32 %12, i32 %13, %struct.virtio_console_config* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VIRTIO_CONSOLE_F_SIZE, align 4
  %18 = load i32, i32* @rows, align 4
  %19 = load %struct.virtio_console_config*, %struct.virtio_console_config** %4, align 8
  %20 = call i32 @VTCON_GET_CONFIG(i32 %16, i32 %17, i32 %18, %struct.virtio_console_config* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VIRTIO_CONSOLE_F_MULTIPORT, align 4
  %23 = load i32, i32* @max_nr_ports, align 4
  %24 = load %struct.virtio_console_config*, %struct.virtio_console_config** %4, align 8
  %25 = call i32 @VTCON_GET_CONFIG(i32 %21, i32 %22, i32 %23, %struct.virtio_console_config* %24)
  ret void
}

declare dso_local i32 @bzero(%struct.virtio_console_config*, i32) #1

declare dso_local i32 @VTCON_GET_CONFIG(i32, i32, i32, %struct.virtio_console_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
