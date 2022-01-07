; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.gif_softc* }
%struct.gif_softc = type { i32 }

@gif_ioctl_sx = common dso_local global i32 0, align 4
@M_GIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @gif_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.gif_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = call i32 @sx_xlock(i32* @gif_ioctl_sx)
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.gif_softc*, %struct.gif_softc** %6, align 8
  store %struct.gif_softc* %7, %struct.gif_softc** %3, align 8
  %8 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %9 = call i32 @gif_delete_tunnel(%struct.gif_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = call i32 @ng_gif_detach_p(%struct.ifnet* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = call i32 @bpfdetach(%struct.ifnet* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = call i32 @if_detach(%struct.ifnet* %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  store %struct.gif_softc* null, %struct.gif_softc** %17, align 8
  %18 = call i32 @sx_xunlock(i32* @gif_ioctl_sx)
  %19 = call i32 (...) @GIF_WAIT()
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = call i32 @if_free(%struct.ifnet* %20)
  %22 = load %struct.gif_softc*, %struct.gif_softc** %3, align 8
  %23 = load i32, i32* @M_GIF, align 4
  %24 = call i32 @free(%struct.gif_softc* %22, i32 %23)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @gif_delete_tunnel(%struct.gif_softc*) #1

declare dso_local i32 @ng_gif_detach_p(%struct.ifnet*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @GIF_WAIT(...) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free(%struct.gif_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
