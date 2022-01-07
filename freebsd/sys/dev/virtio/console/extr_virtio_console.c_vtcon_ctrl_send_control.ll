; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_send_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32 }
%struct.virtio_console_control = type { i8*, i8*, i32 }

@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*, i32, i8*, i8*)* @vtcon_ctrl_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_ctrl_send_control(%struct.vtcon_softc* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vtcon_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.virtio_console_control, align 8
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %11 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %26

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %9, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %25 = call i32 @vtcon_ctrl_poll(%struct.vtcon_softc* %24, %struct.virtio_console_control* %9)
  br label %26

26:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @vtcon_ctrl_poll(%struct.vtcon_softc*, %struct.virtio_console_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
