; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_port = type { i32, i32, %struct.virtqueue*, %struct.tty* }
%struct.virtqueue = type { i32 }
%struct.tty = type { i32 }

@VTCON_PORT_FLAG_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_port*)* @vtcon_port_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_in(%struct.vtcon_port* %0) #0 {
  %2 = alloca %struct.vtcon_port*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vtcon_port* %0, %struct.vtcon_port** %2, align 8
  %9 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %10 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %9, i32 0, i32 3
  %11 = load %struct.tty*, %struct.tty** %10, align 8
  store %struct.tty* %11, %struct.tty** %4, align 8
  %12 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %13 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %12, i32 0, i32 2
  %14 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  store %struct.virtqueue* %14, %struct.virtqueue** %3, align 8
  br label %15

15:                                               ; preds = %54, %1
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %18 = call i8* @virtqueue_dequeue(%struct.virtqueue* %17, i32* %6)
  store i8* %18, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @ttydisc_rint(%struct.tty* %26, i8 signext %31, i32 0)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @vtcon_port_requeue_buf(%struct.vtcon_port* %37, i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = call i32 @ttydisc_rint_done(%struct.tty* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %49 = call i32 @virtqueue_notify(%struct.virtqueue* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %52 = call i64 @virtqueue_enable_intr(%struct.virtqueue* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %15

55:                                               ; preds = %50
  ret void
}

declare dso_local i8* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i8 signext, i32) #1

declare dso_local i32 @vtcon_port_requeue_buf(%struct.vtcon_port*, i8*) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

declare dso_local i64 @virtqueue_enable_intr(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
