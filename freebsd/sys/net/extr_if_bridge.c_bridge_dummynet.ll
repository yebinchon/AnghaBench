; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_dummynet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_dummynet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ifnet = type { %struct.bridge_softc* }
%struct.bridge_softc = type { i32 }

@V_inet_pfil_head = common dso_local global i32 0, align 4
@PFIL_OUT = common dso_local global i32 0, align 4
@V_inet6_pfil_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ifnet*)* @bridge_dummynet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_dummynet(%struct.mbuf* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.bridge_softc*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.bridge_softc*, %struct.bridge_softc** %7, align 8
  store %struct.bridge_softc* %8, %struct.bridge_softc** %5, align 8
  %9 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %10 = icmp eq %struct.bridge_softc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = call i32 @m_freem(%struct.mbuf* %12)
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* @V_inet_pfil_head, align 4
  %16 = call i64 @PFIL_HOOKED_OUT(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = load i32, i32* @PFIL_OUT, align 4
  %24 = call i64 @bridge_pfil(%struct.mbuf** %3, i32 %21, %struct.ifnet* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %37

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %36 = call i32 @bridge_enqueue(%struct.bridge_softc* %33, %struct.ifnet* %34, %struct.mbuf* %35)
  br label %37

37:                                               ; preds = %32, %30, %26, %11
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @PFIL_HOOKED_OUT(i32) #1

declare dso_local i64 @bridge_pfil(%struct.mbuf**, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @bridge_enqueue(%struct.bridge_softc*, %struct.ifnet*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
