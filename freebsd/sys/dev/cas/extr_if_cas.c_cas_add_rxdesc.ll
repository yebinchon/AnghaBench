; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_add_rxdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_add_rxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CAS_RX_KICK = common dso_local global i32 0, align 4
@CAS_NRXDESC = common dso_local global i32 0, align 4
@CAS_NRXDESC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_softc*, i64)* @cas_add_rxdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_add_rxdesc(%struct.cas_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.cas_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.cas_softc* %0, %struct.cas_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @CAS_LOCK_ASSERT(%struct.cas_softc* %5, i32 %6)
  %8 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %19 = call i32 @bus_dmamap_sync(i32 %10, i32 %17, i32 %18)
  %20 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %21 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @CAS_UPDATE_RXDESC(%struct.cas_softc* %20, i32 %23, i64 %24)
  %26 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %27 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CAS_NEXTRXDESC(i32 %28)
  %30 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %31 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %39 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %40 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @CAS_CDSYNC(%struct.cas_softc* %38, i32 %41)
  %43 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %44 = load i32, i32* @CAS_RX_KICK, align 4
  %45 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %46 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CAS_NRXDESC, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 4
  %51 = load i32, i32* @CAS_NRXDESC_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @CAS_WRITE_4(%struct.cas_softc* %43, i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @CAS_LOCK_ASSERT(%struct.cas_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CAS_UPDATE_RXDESC(%struct.cas_softc*, i32, i64) #1

declare dso_local i32 @CAS_NEXTRXDESC(i32) #1

declare dso_local i32 @CAS_CDSYNC(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
