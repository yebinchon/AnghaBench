; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.hn_softc* }
%struct.hn_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@HN_LINK_FLAG_LINKUP = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @hn_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.hn_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  store %struct.hn_softc* %8, %struct.hn_softc** %5, align 8
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %11 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @IFM_ETHER, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HN_LINK_FLAG_LINKUP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @IFM_NONE, align 4
  %23 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %24 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %30 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @IFM_10G_T, align 4
  %34 = load i32, i32* @IFM_FDX, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %37 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %27, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
