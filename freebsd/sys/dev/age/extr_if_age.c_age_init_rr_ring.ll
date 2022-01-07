; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_rr_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_rr_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_2__, %struct.age_ring_data }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.age_ring_data = type { i32 }

@AGE_RR_RING_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_init_rr_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_init_rr_ring(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.age_ring_data*, align 8
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %4 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %5 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %4)
  %6 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %7 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %10 = call i32 @AGE_RXCHAIN_RESET(%struct.age_softc* %9)
  %11 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %12 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %11, i32 0, i32 1
  store %struct.age_ring_data* %12, %struct.age_ring_data** %3, align 8
  %13 = load %struct.age_ring_data*, %struct.age_ring_data** %3, align 8
  %14 = getelementptr inbounds %struct.age_ring_data, %struct.age_ring_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AGE_RR_RING_SZ, align 4
  %17 = call i32 @bzero(i32 %15, i32 %16)
  %18 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %19 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %23 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %27 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @bus_dmamap_sync(i32 %21, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @AGE_RXCHAIN_RESET(%struct.age_softc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
