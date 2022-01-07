; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_delete_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_delete_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gif_softc = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@gif_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_GIF = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gif_softc*)* @gif_delete_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_delete_tunnel(%struct.gif_softc* %0) #0 {
  %2 = alloca %struct.gif_softc*, align 8
  store %struct.gif_softc* %0, %struct.gif_softc** %2, align 8
  %3 = load i32, i32* @SA_XLOCKED, align 4
  %4 = call i32 @sx_assert(i32* @gif_ioctl_sx, i32 %3)
  %5 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %6 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %11 = load i32, i32* @srchash, align 4
  %12 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %10, i32 %11)
  %13 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %14 = load i32, i32* @chain, align 4
  %15 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %13, i32 %14)
  %16 = call i32 (...) @GIF_WAIT()
  %17 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %18 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @M_GIF, align 4
  %21 = call i32 @free(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %24 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %28 = call %struct.TYPE_3__* @GIF2IFP(%struct.gif_softc* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %33 = call %struct.TYPE_3__* @GIF2IFP(%struct.gif_softc* %32)
  %34 = load i32, i32* @LINK_STATE_DOWN, align 4
  %35 = call i32 @if_link_state_change(%struct.TYPE_3__* %33, i32 %34)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gif_softc*, i32) #1

declare dso_local i32 @GIF_WAIT(...) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local %struct.TYPE_3__* @GIF2IFP(%struct.gif_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
