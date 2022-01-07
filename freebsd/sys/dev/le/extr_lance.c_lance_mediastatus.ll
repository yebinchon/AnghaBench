; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_mediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_mediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.lance_softc* }
%struct.lance_softc = type { i32, i32 (%struct.lance_softc*, %struct.ifmediareq*)* }
%struct.ifmediareq = type opaque
%struct.ifmediareq.0 = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@LE_CARRIER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq.0*)* @lance_mediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_mediastatus(%struct.ifnet* %0, %struct.ifmediareq.0* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq.0*, align 8
  %5 = alloca %struct.lance_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq.0* %1, %struct.ifmediareq.0** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  store %struct.lance_softc* %8, %struct.lance_softc** %5, align 8
  %9 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %10 = call i32 @LE_LOCK(%struct.lance_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %19 = call i32 @LE_UNLOCK(%struct.lance_softc* %18)
  br label %52

20:                                               ; preds = %2
  %21 = load i32, i32* @IFM_AVALID, align 4
  %22 = load %struct.ifmediareq.0*, %struct.ifmediareq.0** %4, align 8
  %23 = getelementptr inbounds %struct.ifmediareq.0, %struct.ifmediareq.0* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %25 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LE_CARRIER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @IFM_ACTIVE, align 4
  %32 = load %struct.ifmediareq.0*, %struct.ifmediareq.0** %4, align 8
  %33 = getelementptr inbounds %struct.ifmediareq.0, %struct.ifmediareq.0* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %38 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %37, i32 0, i32 1
  %39 = load i32 (%struct.lance_softc*, %struct.ifmediareq*)*, i32 (%struct.lance_softc*, %struct.ifmediareq*)** %38, align 8
  %40 = icmp ne i32 (%struct.lance_softc*, %struct.ifmediareq*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %43 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %42, i32 0, i32 1
  %44 = load i32 (%struct.lance_softc*, %struct.ifmediareq*)*, i32 (%struct.lance_softc*, %struct.ifmediareq*)** %43, align 8
  %45 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %46 = load %struct.ifmediareq.0*, %struct.ifmediareq.0** %4, align 8
  %47 = bitcast %struct.ifmediareq.0* %46 to %struct.ifmediareq*
  %48 = call i32 %44(%struct.lance_softc* %45, %struct.ifmediareq* %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %51 = call i32 @LE_UNLOCK(%struct.lance_softc* %50)
  br label %52

52:                                               ; preds = %49, %17
  ret void
}

declare dso_local i32 @LE_LOCK(%struct.lance_softc*) #1

declare dso_local i32 @LE_UNLOCK(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
