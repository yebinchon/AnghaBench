; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.hme_softc* }
%struct.hme_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @hme_mediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_mediastatus(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.hme_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  store %struct.hme_softc* %8, %struct.hme_softc** %5, align 8
  %9 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %10 = call i32 @HME_LOCK(%struct.hme_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %19 = call i32 @HME_UNLOCK(%struct.hme_softc* %18)
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %22 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @mii_pollstat(%struct.TYPE_2__* %23)
  %25 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %26 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %31 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %33 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %40 = call i32 @HME_UNLOCK(%struct.hme_softc* %39)
  br label %41

41:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

declare dso_local i32 @mii_pollstat(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
