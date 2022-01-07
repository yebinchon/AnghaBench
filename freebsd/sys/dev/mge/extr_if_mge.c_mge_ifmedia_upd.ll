; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.mge_softc* }
%struct.mge_softc = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @mge_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.mge_softc*, %struct.mge_softc** %5, align 8
  store %struct.mge_softc* %6, %struct.mge_softc** %3, align 8
  %7 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %13 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @mii_mediachg(%struct.TYPE_4__* %31)
  %33 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %34 = call i32 @mge_init_locked(%struct.mge_softc* %33)
  br label %35

35:                                               ; preds = %20, %11
  %36 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %37 = call i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc* %36)
  br label %38

38:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local i32 @MGE_GLOBAL_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @mii_mediachg(%struct.TYPE_4__*) #1

declare dso_local i32 @mge_init_locked(%struct.mge_softc*) #1

declare dso_local i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
