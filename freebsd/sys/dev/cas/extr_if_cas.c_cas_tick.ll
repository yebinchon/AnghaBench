; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i64, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@CAS_MAC_NORM_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_FIRST_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_EXCESS_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_LATE_COLL_CNT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@CAS_MAC_RX_LEN_ERR_CNT = common dso_local global i32 0, align 4
@CAS_MAC_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@CAS_MAC_RX_CRC_ERR_CNT = common dso_local global i32 0, align 4
@CAS_MAC_RX_CODE_VIOL = common dso_local global i32 0, align 4
@CAS_MAXTXFREE = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cas_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cas_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cas_softc*
  store %struct.cas_softc* %7, %struct.cas_softc** %3, align 8
  %8 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %8, i32 0, i32 3
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @CAS_LOCK_ASSERT(%struct.cas_softc* %11, i32 %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %16 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %17 = load i32, i32* @CAS_MAC_NORM_COLL_CNT, align 4
  %18 = call i64 @CAS_READ_4(%struct.cas_softc* %16, i32 %17)
  %19 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %20 = load i32, i32* @CAS_MAC_FIRST_COLL_CNT, align 4
  %21 = call i64 @CAS_READ_4(%struct.cas_softc* %19, i32 %20)
  %22 = add nsw i64 %18, %21
  %23 = call i32 @if_inc_counter(%struct.ifnet* %14, i32 %15, i64 %22)
  %24 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %25 = load i32, i32* @CAS_MAC_EXCESS_COLL_CNT, align 4
  %26 = call i64 @CAS_READ_4(%struct.cas_softc* %24, i32 %25)
  %27 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %28 = load i32, i32* @CAS_MAC_LATE_COLL_CNT, align 4
  %29 = call i64 @CAS_READ_4(%struct.cas_softc* %27, i32 %28)
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @if_inc_counter(%struct.ifnet* %31, i32 %32, i64 %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @if_inc_counter(%struct.ifnet* %35, i32 %36, i64 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %41 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %42 = load i32, i32* @CAS_MAC_RX_LEN_ERR_CNT, align 4
  %43 = call i64 @CAS_READ_4(%struct.cas_softc* %41, i32 %42)
  %44 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %45 = load i32, i32* @CAS_MAC_RX_ALIGN_ERR, align 4
  %46 = call i64 @CAS_READ_4(%struct.cas_softc* %44, i32 %45)
  %47 = add nsw i64 %43, %46
  %48 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %49 = load i32, i32* @CAS_MAC_RX_CRC_ERR_CNT, align 4
  %50 = call i64 @CAS_READ_4(%struct.cas_softc* %48, i32 %49)
  %51 = add nsw i64 %47, %50
  %52 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %53 = load i32, i32* @CAS_MAC_RX_CODE_VIOL, align 4
  %54 = call i64 @CAS_READ_4(%struct.cas_softc* %52, i32 %53)
  %55 = add nsw i64 %51, %54
  %56 = call i32 @if_inc_counter(%struct.ifnet* %39, i32 %40, i64 %55)
  %57 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %58 = load i32, i32* @CAS_MAC_NORM_COLL_CNT, align 4
  %59 = call i32 @CAS_WRITE_4(%struct.cas_softc* %57, i32 %58, i32 0)
  %60 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %61 = load i32, i32* @CAS_MAC_FIRST_COLL_CNT, align 4
  %62 = call i32 @CAS_WRITE_4(%struct.cas_softc* %60, i32 %61, i32 0)
  %63 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %64 = load i32, i32* @CAS_MAC_EXCESS_COLL_CNT, align 4
  %65 = call i32 @CAS_WRITE_4(%struct.cas_softc* %63, i32 %64, i32 0)
  %66 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %67 = load i32, i32* @CAS_MAC_LATE_COLL_CNT, align 4
  %68 = call i32 @CAS_WRITE_4(%struct.cas_softc* %66, i32 %67, i32 0)
  %69 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %70 = load i32, i32* @CAS_MAC_RX_LEN_ERR_CNT, align 4
  %71 = call i32 @CAS_WRITE_4(%struct.cas_softc* %69, i32 %70, i32 0)
  %72 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %73 = load i32, i32* @CAS_MAC_RX_ALIGN_ERR, align 4
  %74 = call i32 @CAS_WRITE_4(%struct.cas_softc* %72, i32 %73, i32 0)
  %75 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %76 = load i32, i32* @CAS_MAC_RX_CRC_ERR_CNT, align 4
  %77 = call i32 @CAS_WRITE_4(%struct.cas_softc* %75, i32 %76, i32 0)
  %78 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %79 = load i32, i32* @CAS_MAC_RX_CODE_VIOL, align 4
  %80 = call i32 @CAS_WRITE_4(%struct.cas_softc* %78, i32 %79, i32 0)
  %81 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %82 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mii_tick(i32 %83)
  %85 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %86 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CAS_MAXTXFREE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %1
  %91 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %92 = call i32 @cas_tint(%struct.cas_softc* %91)
  br label %93

93:                                               ; preds = %90, %1
  %94 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %95 = call i32 @cas_watchdog(%struct.cas_softc* %94)
  %96 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %97 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %96, i32 0, i32 1
  %98 = load i32, i32* @hz, align 4
  %99 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %100 = call i32 @callout_reset(i32* %97, i32 %98, void (i8*)* @cas_tick, %struct.cas_softc* %99)
  ret void
}

declare dso_local i32 @CAS_LOCK_ASSERT(%struct.cas_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @CAS_READ_4(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @cas_tint(%struct.cas_softc*) #1

declare dso_local i32 @cas_watchdog(%struct.cas_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.cas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
