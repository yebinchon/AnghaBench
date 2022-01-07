; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_task_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_task_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.virtio_console_control = type { i32 }

@VTCON_FLAG_DETACHED = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vtcon_ctrl_task_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_ctrl_task_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtcon_softc*, align 8
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca %struct.virtio_console_control*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.vtcon_softc*
  store %struct.vtcon_softc* %13, %struct.vtcon_softc** %5, align 8
  %14 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %15 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %14, i32 0, i32 2
  %16 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  store %struct.virtqueue* %16, %struct.virtqueue** %6, align 8
  %17 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %18 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %17)
  br label %19

19:                                               ; preds = %44, %2
  %20 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %21 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VTCON_FLAG_DETACHED, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %28 = call %struct.virtio_console_control* @virtqueue_dequeue(%struct.virtqueue* %27, i32* %11)
  store %struct.virtio_console_control* %28, %struct.virtio_console_control** %7, align 8
  %29 = load %struct.virtio_console_control*, %struct.virtio_console_control** %7, align 8
  %30 = icmp eq %struct.virtio_console_control* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 4
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.virtio_console_control*, %struct.virtio_console_control** %7, align 8
  %38 = getelementptr inbounds %struct.virtio_console_control, %struct.virtio_console_control* %37, i64 1
  %39 = bitcast %struct.virtio_console_control* %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  store i64 %42, i64* %9, align 8
  br label %44

43:                                               ; preds = %32
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %46 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %45)
  %47 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %48 = load %struct.virtio_console_control*, %struct.virtio_console_control** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @vtcon_ctrl_process_event(%struct.vtcon_softc* %47, %struct.virtio_console_control* %48, i8* %49, i64 %50)
  %52 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %53 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %52)
  %54 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %55 = load %struct.virtio_console_control*, %struct.virtio_console_control** %7, align 8
  %56 = call i32 @vtcon_ctrl_event_requeue(%struct.vtcon_softc* %54, %struct.virtio_console_control* %55)
  br label %19

57:                                               ; preds = %31, %19
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %62 = call i32 @virtqueue_notify(%struct.virtqueue* %61)
  %63 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %64 = call i64 @virtqueue_enable_intr(%struct.virtqueue* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @taskqueue_thread, align 4
  %68 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %69 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %68, i32 0, i32 1
  %70 = call i32 @taskqueue_enqueue(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.vtcon_softc*, %struct.vtcon_softc** %5, align 8
  %74 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %73)
  ret void
}

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local %struct.virtio_console_control* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_ctrl_process_event(%struct.vtcon_softc*, %struct.virtio_console_control*, i8*, i64) #1

declare dso_local i32 @vtcon_ctrl_event_requeue(%struct.vtcon_softc*, %struct.virtio_console_control*) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

declare dso_local i64 @virtqueue_enable_intr(%struct.virtqueue*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
