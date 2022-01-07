; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_fill_actorinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_fill_actorinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.TYPE_5__*, %struct.lagg_port* }
%struct.TYPE_5__ = type { i32 }
%struct.lagg_port = type { %struct.lagg_softc* }
%struct.lagg_softc = type { i32 }
%struct.lacp_peerinfo = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i8* }

@LACP_SYSTEM_PRIO = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@LACP_PORT_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*, %struct.lacp_peerinfo*)* @lacp_fill_actorinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_fill_actorinfo(%struct.lacp_port* %0, %struct.lacp_peerinfo* %1) #0 {
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacp_peerinfo*, align 8
  %5 = alloca %struct.lagg_port*, align 8
  %6 = alloca %struct.lagg_softc*, align 8
  store %struct.lacp_port* %0, %struct.lacp_port** %3, align 8
  store %struct.lacp_peerinfo* %1, %struct.lacp_peerinfo** %4, align 8
  %7 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %8 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %7, i32 0, i32 2
  %9 = load %struct.lagg_port*, %struct.lagg_port** %8, align 8
  store %struct.lagg_port* %9, %struct.lagg_port** %5, align 8
  %10 = load %struct.lagg_port*, %struct.lagg_port** %5, align 8
  %11 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %10, i32 0, i32 0
  %12 = load %struct.lagg_softc*, %struct.lagg_softc** %11, align 8
  store %struct.lagg_softc* %12, %struct.lagg_softc** %6, align 8
  %13 = load i32, i32* @LACP_SYSTEM_PRIO, align 4
  %14 = call i8* @htons(i32 %13)
  %15 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %16 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %19 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %22 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IF_LLADDR(i32 %23)
  %25 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %26 = call i32 @memcpy(i32* %20, i32 %24, i32 %25)
  %27 = load i32, i32* @LACP_PORT_PRIO, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %30 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %33 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %39 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %42 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %45 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @IF_LLADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
