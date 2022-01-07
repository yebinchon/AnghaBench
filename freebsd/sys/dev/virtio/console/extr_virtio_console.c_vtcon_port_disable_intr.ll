; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_port = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_port*)* @vtcon_port_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_disable_intr(%struct.vtcon_port* %0) #0 {
  %2 = alloca %struct.vtcon_port*, align 8
  store %struct.vtcon_port* %0, %struct.vtcon_port** %2, align 8
  %3 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %4 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %9 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @virtqueue_disable_intr(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %14 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %19 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @virtqueue_disable_intr(i32* %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @virtqueue_disable_intr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
