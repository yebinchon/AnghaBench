; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_tty_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.vtcon_port = type { i32 }

@VTCON_PORT_FLAG_GONE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VIRTIO_CONSOLE_PORT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @vtcon_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_tty_open(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.vtcon_port*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = call %struct.vtcon_port* @tty_softc(%struct.tty* %5)
  store %struct.vtcon_port* %6, %struct.vtcon_port** %4, align 8
  %7 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %8 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VTCON_PORT_FLAG_GONE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %17 = load i32, i32* @VIRTIO_CONSOLE_PORT_OPEN, align 4
  %18 = call i32 @vtcon_port_submit_event(%struct.vtcon_port* %16, i32 %17, i32 1)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.vtcon_port* @tty_softc(%struct.tty*) #1

declare dso_local i32 @vtcon_port_submit_event(%struct.vtcon_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
