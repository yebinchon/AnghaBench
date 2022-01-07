; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.ste_hw_stats, %struct.ifnet* }
%struct.ste_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@STE_STAT_RX_OCTETS_LO = common dso_local global i32 0, align 4
@STE_STAT_RX_OCTETS_HI = common dso_local global i32 0, align 4
@STE_STAT_RX_FRAMES = common dso_local global i32 0, align 4
@STE_STAT_RX_BCAST = common dso_local global i32 0, align 4
@STE_STAT_RX_MCAST = common dso_local global i32 0, align 4
@STE_STAT_RX_LOST = common dso_local global i32 0, align 4
@STE_STAT_TX_OCTETS_LO = common dso_local global i32 0, align 4
@STE_STAT_TX_OCTETS_HI = common dso_local global i32 0, align 4
@STE_STAT_TX_FRAMES = common dso_local global i32 0, align 4
@STE_STAT_TX_BCAST = common dso_local global i32 0, align 4
@STE_STAT_TX_MCAST = common dso_local global i32 0, align 4
@STE_STAT_CARRIER_ERR = common dso_local global i32 0, align 4
@STE_STAT_SINGLE_COLLS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@STE_STAT_MULTI_COLLS = common dso_local global i32 0, align 4
@STE_STAT_LATE_COLLS = common dso_local global i32 0, align 4
@STE_STAT_TX_DEFER = common dso_local global i32 0, align 4
@STE_STAT_TX_EXDEFER = common dso_local global i32 0, align 4
@STE_STAT_TX_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_stats_update(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ste_hw_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %6 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %7 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %6)
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %11, i32 0, i32 0
  store %struct.ste_hw_stats* %12, %struct.ste_hw_stats** %4, align 8
  %13 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %14 = load i32, i32* @STE_STAT_RX_OCTETS_LO, align 4
  %15 = call i64 @CSR_READ_2(%struct.ste_softc* %13, i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %18 = load i32, i32* @STE_STAT_RX_OCTETS_HI, align 4
  %19 = call i64 @CSR_READ_2(%struct.ste_softc* %17, i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 16
  %22 = or i32 %16, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 1048575
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %27 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %31 = load i32, i32* @STE_STAT_RX_FRAMES, align 4
  %32 = call i64 @CSR_READ_2(%struct.ste_softc* %30, i32 %31)
  %33 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %34 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %40 = load i32, i32* @STE_STAT_RX_BCAST, align 4
  %41 = call i32 @CSR_READ_1(%struct.ste_softc* %39, i32 %40)
  %42 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %43 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %47 = load i32, i32* @STE_STAT_RX_MCAST, align 4
  %48 = call i32 @CSR_READ_1(%struct.ste_softc* %46, i32 %47)
  %49 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %50 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %54 = load i32, i32* @STE_STAT_RX_LOST, align 4
  %55 = call i32 @CSR_READ_1(%struct.ste_softc* %53, i32 %54)
  %56 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %57 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %61 = load i32, i32* @STE_STAT_TX_OCTETS_LO, align 4
  %62 = call i64 @CSR_READ_2(%struct.ste_softc* %60, i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %65 = load i32, i32* @STE_STAT_TX_OCTETS_HI, align 4
  %66 = call i64 @CSR_READ_2(%struct.ste_softc* %64, i32 %65)
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 16
  %69 = or i32 %63, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 1048575
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %74 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %78 = load i32, i32* @STE_STAT_TX_FRAMES, align 4
  %79 = call i64 @CSR_READ_2(%struct.ste_softc* %77, i32 %78)
  %80 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %81 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %87 = load i32, i32* @STE_STAT_TX_BCAST, align 4
  %88 = call i32 @CSR_READ_1(%struct.ste_softc* %86, i32 %87)
  %89 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %90 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %94 = load i32, i32* @STE_STAT_TX_MCAST, align 4
  %95 = call i32 @CSR_READ_1(%struct.ste_softc* %93, i32 %94)
  %96 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %97 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %101 = load i32, i32* @STE_STAT_CARRIER_ERR, align 4
  %102 = call i32 @CSR_READ_1(%struct.ste_softc* %100, i32 %101)
  %103 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %104 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %108 = load i32, i32* @STE_STAT_SINGLE_COLLS, align 4
  %109 = call i32 @CSR_READ_1(%struct.ste_softc* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %112 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %116 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @if_inc_counter(%struct.ifnet* %115, i32 %116, i32 %117)
  %119 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %120 = load i32, i32* @STE_STAT_MULTI_COLLS, align 4
  %121 = call i32 @CSR_READ_1(%struct.ste_softc* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %124 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %128 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @if_inc_counter(%struct.ifnet* %127, i32 %128, i32 %129)
  %131 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %132 = load i32, i32* @STE_STAT_LATE_COLLS, align 4
  %133 = call i32 @CSR_READ_1(%struct.ste_softc* %131, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %138 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %142 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @if_inc_counter(%struct.ifnet* %141, i32 %142, i32 %143)
  %145 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %146 = load i32, i32* @STE_STAT_TX_DEFER, align 4
  %147 = call i32 @CSR_READ_1(%struct.ste_softc* %145, i32 %146)
  %148 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %149 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %153 = load i32, i32* @STE_STAT_TX_EXDEFER, align 4
  %154 = call i32 @CSR_READ_1(%struct.ste_softc* %152, i32 %153)
  %155 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %156 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %160 = load i32, i32* @STE_STAT_TX_ABORT, align 4
  %161 = call i32 @CSR_READ_1(%struct.ste_softc* %159, i32 %160)
  %162 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %4, align 8
  %163 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i64 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.ste_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
