; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_port = type { i32, %struct.tty* }
%struct.tty = type { i32 }

@VTCON_PORT_FLAG_GONE = common dso_local global i32 0, align 4
@vtcon_pending_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_port*)* @vtcon_port_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_teardown(%struct.vtcon_port* %0) #0 {
  %2 = alloca %struct.vtcon_port*, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.vtcon_port* %0, %struct.vtcon_port** %2, align 8
  %4 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %5 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %4, i32 0, i32 1
  %6 = load %struct.tty*, %struct.tty** %5, align 8
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load i32, i32* @VTCON_PORT_FLAG_GONE, align 4
  %8 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %9 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = icmp ne %struct.tty* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @atomic_add_int(i32* @vtcon_pending_free, i32 1)
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = call i32 @tty_rel_gone(%struct.tty* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.vtcon_port*, %struct.vtcon_port** %2, align 8
  %20 = call i32 @vtcon_port_destroy(%struct.vtcon_port* %19)
  br label %21

21:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @tty_rel_gone(%struct.tty*) #1

declare dso_local i32 @vtcon_port_destroy(%struct.vtcon_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
