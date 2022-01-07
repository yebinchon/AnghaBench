; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtnode_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtnode_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.bridge_rtnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@brt_hash = common dso_local global i32 0, align 4
@brt_list = common dso_local global i32 0, align 4
@V_bridge_rtnode_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_softc*, %struct.bridge_rtnode*)* @bridge_rtnode_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_rtnode_destroy(%struct.bridge_softc* %0, %struct.bridge_rtnode* %1) #0 {
  %3 = alloca %struct.bridge_softc*, align 8
  %4 = alloca %struct.bridge_rtnode*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %3, align 8
  store %struct.bridge_rtnode* %1, %struct.bridge_rtnode** %4, align 8
  %5 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %6 = call i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc* %5)
  %7 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %4, align 8
  %8 = load i32, i32* @brt_hash, align 4
  %9 = call i32 @LIST_REMOVE(%struct.bridge_rtnode* %7, i32 %8)
  %10 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %4, align 8
  %11 = load i32, i32* @brt_list, align 4
  %12 = call i32 @LIST_REMOVE(%struct.bridge_rtnode* %10, i32 %11)
  %13 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %4, align 8
  %18 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @V_bridge_rtnode_zone, align 4
  %24 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %4, align 8
  %25 = call i32 @uma_zfree(i32 %23, %struct.bridge_rtnode* %24)
  ret void
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bridge_rtnode*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.bridge_rtnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
