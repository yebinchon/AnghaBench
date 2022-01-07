; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc_port = type { %struct.vtcon_port*, %struct.vtcon_softc* }
%struct.vtcon_port = type { i32 }
%struct.vtcon_softc = type { i32 }

@VTCON_PORT_FLAG_GONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtcon_port_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtcon_softc_port*, align 8
  %4 = alloca %struct.vtcon_softc*, align 8
  %5 = alloca %struct.vtcon_port*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtcon_softc_port*
  store %struct.vtcon_softc_port* %7, %struct.vtcon_softc_port** %3, align 8
  %8 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %9 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %8, i32 0, i32 1
  %10 = load %struct.vtcon_softc*, %struct.vtcon_softc** %9, align 8
  store %struct.vtcon_softc* %10, %struct.vtcon_softc** %4, align 8
  %11 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %12 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %11)
  %13 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %14 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %13, i32 0, i32 0
  %15 = load %struct.vtcon_port*, %struct.vtcon_port** %14, align 8
  store %struct.vtcon_port* %15, %struct.vtcon_port** %5, align 8
  %16 = load %struct.vtcon_port*, %struct.vtcon_port** %5, align 8
  %17 = icmp eq %struct.vtcon_port* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %20 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %19)
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.vtcon_port*, %struct.vtcon_port** %5, align 8
  %23 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %22)
  %24 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %25 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %24)
  %26 = load %struct.vtcon_port*, %struct.vtcon_port** %5, align 8
  %27 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VTCON_PORT_FLAG_GONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.vtcon_port*, %struct.vtcon_port** %5, align 8
  %34 = call i32 @vtcon_port_in(%struct.vtcon_port* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.vtcon_port*, %struct.vtcon_port** %5, align 8
  %37 = call i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port* %36)
  br label %38

38:                                               ; preds = %35, %18
  ret void
}

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @VTCON_PORT_LOCK(%struct.vtcon_port*) #1

declare dso_local i32 @vtcon_port_in(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
