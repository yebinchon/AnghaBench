; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.msk_softc* }
%struct.msk_softc = type { i32 }

@GM_PHY_ADDR = common dso_local global i32 0, align 4
@GM_PAR_MIB_CLR = common dso_local global i32 0, align 4
@GM_RXF_UC_OK = common dso_local global i32 0, align 4
@GM_TXE_FIFO_UR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_stats_clear(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %7 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %8 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %7)
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %10 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %9, i32 0, i32 1
  %11 = load %struct.msk_softc*, %struct.msk_softc** %10, align 8
  store %struct.msk_softc* %11, %struct.msk_softc** %3, align 8
  %12 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %13 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %14 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GM_PHY_ADDR, align 4
  %17 = call i32 @GMAC_READ_2(%struct.msk_softc* %12, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %19 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %20 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GM_PHY_ADDR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %18, i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* @GM_RXF_UC_OK, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %38, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GM_TXE_FIFO_UR, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MSK_READ_MIB32(i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %49 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %50 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GM_PHY_ADDR, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %48, i32 %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @GMAC_READ_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i32, i32, i32) #1

declare dso_local i32 @MSK_READ_MIB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
