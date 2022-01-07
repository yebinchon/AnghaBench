; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_harvest_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_harvest_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@FEC_RMON_R_PACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IMCASTS = common dso_local global i32 0, align 4
@FEC_RMON_R_MC_PKT = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@FEC_RMON_R_CRC_ALIGN = common dso_local global i32 0, align 4
@FEC_RMON_R_UNDERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_R_OVERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_R_FRAG = common dso_local global i32 0, align 4
@FEC_RMON_R_JAB = common dso_local global i32 0, align 4
@FEC_IEEE_R_DROP = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@FEC_IEEE_R_MACERR = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@FEC_RMON_T_PACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@FEC_RMON_T_MC_PKT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@FEC_RMON_T_CRC_ALIGN = common dso_local global i32 0, align 4
@FEC_RMON_T_UNDERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_T_OVERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_T_FRAG = common dso_local global i32 0, align 4
@FEC_RMON_T_JAB = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@FEC_RMON_T_COL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_harvest_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_harvest_stats(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %4 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %9 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %10 = load i32, i32* @FEC_RMON_R_PACKETS, align 4
  %11 = call i64 @RD4(%struct.ffec_softc* %9, i32 %10)
  %12 = call i32 @if_inc_counter(%struct.ifnet* %7, i32 %8, i64 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = load i32, i32* @IFCOUNTER_IMCASTS, align 4
  %15 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %16 = load i32, i32* @FEC_RMON_R_MC_PKT, align 4
  %17 = call i64 @RD4(%struct.ffec_softc* %15, i32 %16)
  %18 = call i32 @if_inc_counter(%struct.ifnet* %13, i32 %14, i64 %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %21 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %22 = load i32, i32* @FEC_RMON_R_CRC_ALIGN, align 4
  %23 = call i64 @RD4(%struct.ffec_softc* %21, i32 %22)
  %24 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %25 = load i32, i32* @FEC_RMON_R_UNDERSIZE, align 4
  %26 = call i64 @RD4(%struct.ffec_softc* %24, i32 %25)
  %27 = add nsw i64 %23, %26
  %28 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %29 = load i32, i32* @FEC_RMON_R_OVERSIZE, align 4
  %30 = call i64 @RD4(%struct.ffec_softc* %28, i32 %29)
  %31 = add nsw i64 %27, %30
  %32 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %33 = load i32, i32* @FEC_RMON_R_FRAG, align 4
  %34 = call i64 @RD4(%struct.ffec_softc* %32, i32 %33)
  %35 = add nsw i64 %31, %34
  %36 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %37 = load i32, i32* @FEC_RMON_R_JAB, align 4
  %38 = call i64 @RD4(%struct.ffec_softc* %36, i32 %37)
  %39 = add nsw i64 %35, %38
  %40 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %41 = load i32, i32* @FEC_IEEE_R_DROP, align 4
  %42 = call i64 @RD4(%struct.ffec_softc* %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i64 %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %47 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %48 = load i32, i32* @FEC_IEEE_R_MACERR, align 4
  %49 = call i64 @RD4(%struct.ffec_softc* %47, i32 %48)
  %50 = call i32 @if_inc_counter(%struct.ifnet* %45, i32 %46, i64 %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %53 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %54 = load i32, i32* @FEC_RMON_T_PACKETS, align 4
  %55 = call i64 @RD4(%struct.ffec_softc* %53, i32 %54)
  %56 = call i32 @if_inc_counter(%struct.ifnet* %51, i32 %52, i64 %55)
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %59 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %60 = load i32, i32* @FEC_RMON_T_MC_PKT, align 4
  %61 = call i64 @RD4(%struct.ffec_softc* %59, i32 %60)
  %62 = call i32 @if_inc_counter(%struct.ifnet* %57, i32 %58, i64 %61)
  %63 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %64 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %65 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %66 = load i32, i32* @FEC_RMON_T_CRC_ALIGN, align 4
  %67 = call i64 @RD4(%struct.ffec_softc* %65, i32 %66)
  %68 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %69 = load i32, i32* @FEC_RMON_T_UNDERSIZE, align 4
  %70 = call i64 @RD4(%struct.ffec_softc* %68, i32 %69)
  %71 = add nsw i64 %67, %70
  %72 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %73 = load i32, i32* @FEC_RMON_T_OVERSIZE, align 4
  %74 = call i64 @RD4(%struct.ffec_softc* %72, i32 %73)
  %75 = add nsw i64 %71, %74
  %76 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %77 = load i32, i32* @FEC_RMON_T_FRAG, align 4
  %78 = call i64 @RD4(%struct.ffec_softc* %76, i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %81 = load i32, i32* @FEC_RMON_T_JAB, align 4
  %82 = call i64 @RD4(%struct.ffec_softc* %80, i32 %81)
  %83 = add nsw i64 %79, %82
  %84 = call i32 @if_inc_counter(%struct.ifnet* %63, i32 %64, i64 %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %88 = load i32, i32* @FEC_RMON_T_COL, align 4
  %89 = call i64 @RD4(%struct.ffec_softc* %87, i32 %88)
  %90 = call i32 @if_inc_counter(%struct.ifnet* %85, i32 %86, i64 %89)
  %91 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %92 = call i32 @ffec_clear_stats(%struct.ffec_softc* %91)
  ret void
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @ffec_clear_stats(%struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
