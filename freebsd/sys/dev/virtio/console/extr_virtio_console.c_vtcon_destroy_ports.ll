; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_destroy_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_destroy_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, %struct.vtcon_softc_port* }
%struct.vtcon_softc_port = type { %struct.virtqueue*, %struct.vtcon_port* }
%struct.virtqueue = type { i32 }
%struct.vtcon_port = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*)* @vtcon_destroy_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_destroy_ports(%struct.vtcon_softc* %0) #0 {
  %2 = alloca %struct.vtcon_softc*, align 8
  %3 = alloca %struct.vtcon_softc_port*, align 8
  %4 = alloca %struct.vtcon_port*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %2, align 8
  %7 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %7, i32 0, i32 1
  %9 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %8, align 8
  %10 = icmp eq %struct.vtcon_softc_port* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %14 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %54, %12
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %22, i32 0, i32 1
  %24 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %24, i64 %26
  store %struct.vtcon_softc_port* %27, %struct.vtcon_softc_port** %3, align 8
  %28 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %29 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %28, i32 0, i32 1
  %30 = load %struct.vtcon_port*, %struct.vtcon_port** %29, align 8
  store %struct.vtcon_port* %30, %struct.vtcon_port** %4, align 8
  %31 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %32 = icmp ne %struct.vtcon_port* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %35 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %34, i32 0, i32 1
  store %struct.vtcon_port* null, %struct.vtcon_port** %35, align 8
  %36 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %37 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %36)
  %38 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %39 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %38)
  %40 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %41 = call i32 @vtcon_port_teardown(%struct.vtcon_port* %40)
  %42 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %43 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %42)
  br label %44

44:                                               ; preds = %33, %21
  %45 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %3, align 8
  %46 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %45, i32 0, i32 0
  %47 = load %struct.virtqueue*, %struct.virtqueue** %46, align 8
  store %struct.virtqueue* %47, %struct.virtqueue** %5, align 8
  %48 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %49 = icmp ne %struct.virtqueue* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %52 = call i32 @vtcon_port_drain_bufs(%struct.virtqueue* %51)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %59 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %58)
  %60 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %61 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %60, i32 0, i32 1
  %62 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.vtcon_softc_port* %62, i32 %63)
  %65 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %66 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %65, i32 0, i32 1
  store %struct.vtcon_softc_port* null, %struct.vtcon_softc_port** %66, align 8
  br label %67

67:                                               ; preds = %57, %11
  ret void
}

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @VTCON_PORT_LOCK(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_port_teardown(%struct.vtcon_port*) #1

declare dso_local i32 @vtcon_port_drain_bufs(%struct.virtqueue*) #1

declare dso_local i32 @free(%struct.vtcon_softc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
