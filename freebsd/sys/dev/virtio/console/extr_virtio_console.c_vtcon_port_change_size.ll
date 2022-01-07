; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_change_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_change_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_port = type { %struct.tty* }
%struct.tty = type { i32 }
%struct.winsize = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_port*, i8*, i8*)* @vtcon_port_change_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_port_change_size(%struct.vtcon_port* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vtcon_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca %struct.winsize, align 8
  store %struct.vtcon_port* %0, %struct.vtcon_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.vtcon_port*, %struct.vtcon_port** %4, align 8
  %10 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %9, i32 0, i32 0
  %11 = load %struct.tty*, %struct.tty** %10, align 8
  store %struct.tty* %11, %struct.tty** %7, align 8
  %12 = load %struct.tty*, %struct.tty** %7, align 8
  %13 = icmp eq %struct.tty* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %23

15:                                               ; preds = %3
  %16 = call i32 @bzero(%struct.winsize* %8, i32 16)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.winsize, %struct.winsize* %8, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.winsize, %struct.winsize* %8, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.tty*, %struct.tty** %7, align 8
  %22 = call i32 @tty_set_winsize(%struct.tty* %21, %struct.winsize* %8)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @bzero(%struct.winsize*, i32) #1

declare dso_local i32 @tty_set_winsize(%struct.tty*, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
