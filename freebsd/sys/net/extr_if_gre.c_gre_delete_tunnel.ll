; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_delete_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_delete_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_softc = type { i64, %struct.gre_softc*, i32, i32, i32, i32 }
%struct.gre_socket = type { i64, %struct.gre_socket*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@gre_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@M_GRE = common dso_local global i32 0, align 4
@net_epoch_preempt = common dso_local global i32 0, align 4
@gre_sofree = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gre_softc*)* @gre_delete_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_delete_tunnel(%struct.gre_softc* %0) #0 {
  %2 = alloca %struct.gre_softc*, align 8
  %3 = alloca %struct.gre_socket*, align 8
  store %struct.gre_softc* %0, %struct.gre_softc** %2, align 8
  %4 = load i32, i32* @SA_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @gre_ioctl_sx, i32 %4)
  %6 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %7 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %12 = load i32, i32* @chain, align 4
  %13 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %11, i32 %12)
  %14 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %15 = load i32, i32* @srchash, align 4
  %16 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %14, i32 %15)
  %17 = call i32 (...) @GRE_WAIT()
  %18 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %19 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @M_GRE, align 4
  %22 = call i32 @free(i32 %20, i32 %21)
  %23 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %24 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %10, %1
  %26 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %27 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %26, i32 0, i32 1
  %28 = load %struct.gre_softc*, %struct.gre_softc** %27, align 8
  %29 = bitcast %struct.gre_softc* %28 to %struct.gre_socket*
  store %struct.gre_socket* %29, %struct.gre_socket** %3, align 8
  %30 = icmp ne %struct.gre_socket* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.gre_socket*, %struct.gre_socket** %3, align 8
  %33 = getelementptr inbounds %struct.gre_socket, %struct.gre_socket* %32, i32 0, i32 4
  %34 = call i64 @CK_LIST_EMPTY(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.gre_socket*, %struct.gre_socket** %3, align 8
  %38 = bitcast %struct.gre_socket* %37 to %struct.gre_softc*
  %39 = load i32, i32* @chain, align 4
  %40 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %38, i32 %39)
  %41 = load %struct.gre_socket*, %struct.gre_socket** %3, align 8
  %42 = getelementptr inbounds %struct.gre_socket, %struct.gre_socket* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @soclose(i32 %43)
  %45 = load i32, i32* @net_epoch_preempt, align 4
  %46 = load %struct.gre_socket*, %struct.gre_socket** %3, align 8
  %47 = getelementptr inbounds %struct.gre_socket, %struct.gre_socket* %46, i32 0, i32 2
  %48 = load i32, i32* @gre_sofree, align 4
  %49 = call i32 @epoch_call(i32 %45, i32* %47, i32 %48)
  %50 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %51 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %50, i32 0, i32 1
  store %struct.gre_softc* null, %struct.gre_softc** %51, align 8
  br label %52

52:                                               ; preds = %36, %31, %25
  %53 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %56 = call %struct.TYPE_3__* @GRE2IFP(%struct.gre_softc* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %61 = call %struct.TYPE_3__* @GRE2IFP(%struct.gre_softc* %60)
  %62 = load i32, i32* @LINK_STATE_DOWN, align 4
  %63 = call i32 @if_link_state_change(%struct.TYPE_3__* %61, i32 %62)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gre_softc*, i32) #1

declare dso_local i32 @GRE_WAIT(...) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i64 @CK_LIST_EMPTY(i32*) #1

declare dso_local i32 @soclose(i32) #1

declare dso_local i32 @epoch_call(i32, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @GRE2IFP(%struct.gre_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
