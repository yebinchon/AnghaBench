; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_tfo_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_tfo_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syncache = type { i32 }
%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@tcps_sc_aborted = common dso_local global i32 0, align 4
@TF_FASTOPEN = common dso_local global i32 0, align 4
@tcps_sc_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.syncache*, %struct.socket**, %struct.mbuf*, i32)* @syncache_tfo_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncache_tfo_expand(%struct.syncache* %0, %struct.socket** %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.syncache*, align 8
  %6 = alloca %struct.socket**, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca i32*, align 8
  store %struct.syncache* %0, %struct.syncache** %5, align 8
  store %struct.socket** %1, %struct.socket*** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @NET_EPOCH_ASSERT()
  %13 = load %struct.socket**, %struct.socket*** %6, align 8
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  %15 = call %struct.inpcb* @sotoinpcb(%struct.socket* %14)
  %16 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %15)
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.syncache*, %struct.syncache** %5, align 8
  %20 = load %struct.socket**, %struct.socket*** %6, align 8
  %21 = load %struct.socket*, %struct.socket** %20, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = call %struct.socket* @syncache_socket(%struct.syncache* %19, %struct.socket* %21, %struct.mbuf* %22)
  %24 = load %struct.socket**, %struct.socket*** %6, align 8
  store %struct.socket* %23, %struct.socket** %24, align 8
  %25 = load %struct.socket**, %struct.socket*** %6, align 8
  %26 = load %struct.socket*, %struct.socket** %25, align 8
  %27 = icmp eq %struct.socket* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* @tcps_sc_aborted, align 4
  %30 = call i32 @TCPSTAT_INC(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @atomic_subtract_int(i32* %31, i32 1)
  br label %66

33:                                               ; preds = %4
  %34 = load %struct.socket**, %struct.socket*** %6, align 8
  %35 = load %struct.socket*, %struct.socket** %34, align 8
  %36 = call i32 @soisconnected(%struct.socket* %35)
  %37 = load %struct.socket**, %struct.socket*** %6, align 8
  %38 = load %struct.socket*, %struct.socket** %37, align 8
  %39 = call %struct.inpcb* @sotoinpcb(%struct.socket* %38)
  store %struct.inpcb* %39, %struct.inpcb** %9, align 8
  %40 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %41 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %40)
  store %struct.tcpcb* %41, %struct.tcpcb** %10, align 8
  %42 = load i32, i32* @TF_FASTOPEN, align 4
  %43 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* @tcps_sc_completed, align 4
  %65 = call i32 @TCPSTAT_INC(i32 %64)
  br label %66

66:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.socket* @syncache_socket(%struct.syncache*, %struct.socket*, %struct.mbuf*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
