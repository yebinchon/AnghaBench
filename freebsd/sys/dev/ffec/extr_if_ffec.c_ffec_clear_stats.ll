; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_clear_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i64 }

@FEC_MIBC_REG = common dso_local global i32 0, align 4
@FECTYPE_IMX6 = common dso_local global i64 0, align 8
@FECTYPE_MVF = common dso_local global i64 0, align 8
@FEC_MIBC_CLEAR = common dso_local global i32 0, align 4
@FEC_MIBC_DIS = common dso_local global i32 0, align 4
@FEC_IEEE_R_DROP = common dso_local global i32 0, align 4
@FEC_IEEE_R_MACERR = common dso_local global i32 0, align 4
@FEC_RMON_R_CRC_ALIGN = common dso_local global i32 0, align 4
@FEC_RMON_R_FRAG = common dso_local global i32 0, align 4
@FEC_RMON_R_JAB = common dso_local global i32 0, align 4
@FEC_RMON_R_MC_PKT = common dso_local global i32 0, align 4
@FEC_RMON_R_OVERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_R_PACKETS = common dso_local global i32 0, align 4
@FEC_RMON_R_UNDERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_T_COL = common dso_local global i32 0, align 4
@FEC_RMON_T_CRC_ALIGN = common dso_local global i32 0, align 4
@FEC_RMON_T_FRAG = common dso_local global i32 0, align 4
@FEC_RMON_T_JAB = common dso_local global i32 0, align 4
@FEC_RMON_T_MC_PKT = common dso_local global i32 0, align 4
@FEC_RMON_T_OVERSIZE = common dso_local global i32 0, align 4
@FEC_RMON_T_PACKETS = common dso_local global i32 0, align 4
@FEC_RMON_T_UNDERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_clear_stats(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %4 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %5 = load i32, i32* @FEC_MIBC_REG, align 4
  %6 = call i32 @RD4(%struct.ffec_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FECTYPE_IMX6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FECTYPE_MVF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12, %1
  %19 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %20 = load i32, i32* @FEC_MIBC_REG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @FEC_MIBC_CLEAR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @WR4(%struct.ffec_softc* %19, i32 %20, i32 %23)
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %26 = load i32, i32* @FEC_MIBC_REG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FEC_MIBC_CLEAR, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @WR4(%struct.ffec_softc* %25, i32 %26, i32 %30)
  br label %94

32:                                               ; preds = %12
  %33 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %34 = load i32, i32* @FEC_MIBC_REG, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @FEC_MIBC_DIS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @WR4(%struct.ffec_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %40 = load i32, i32* @FEC_IEEE_R_DROP, align 4
  %41 = call i32 @WR4(%struct.ffec_softc* %39, i32 %40, i32 0)
  %42 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %43 = load i32, i32* @FEC_IEEE_R_MACERR, align 4
  %44 = call i32 @WR4(%struct.ffec_softc* %42, i32 %43, i32 0)
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %46 = load i32, i32* @FEC_RMON_R_CRC_ALIGN, align 4
  %47 = call i32 @WR4(%struct.ffec_softc* %45, i32 %46, i32 0)
  %48 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %49 = load i32, i32* @FEC_RMON_R_FRAG, align 4
  %50 = call i32 @WR4(%struct.ffec_softc* %48, i32 %49, i32 0)
  %51 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %52 = load i32, i32* @FEC_RMON_R_JAB, align 4
  %53 = call i32 @WR4(%struct.ffec_softc* %51, i32 %52, i32 0)
  %54 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %55 = load i32, i32* @FEC_RMON_R_MC_PKT, align 4
  %56 = call i32 @WR4(%struct.ffec_softc* %54, i32 %55, i32 0)
  %57 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %58 = load i32, i32* @FEC_RMON_R_OVERSIZE, align 4
  %59 = call i32 @WR4(%struct.ffec_softc* %57, i32 %58, i32 0)
  %60 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %61 = load i32, i32* @FEC_RMON_R_PACKETS, align 4
  %62 = call i32 @WR4(%struct.ffec_softc* %60, i32 %61, i32 0)
  %63 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %64 = load i32, i32* @FEC_RMON_R_UNDERSIZE, align 4
  %65 = call i32 @WR4(%struct.ffec_softc* %63, i32 %64, i32 0)
  %66 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %67 = load i32, i32* @FEC_RMON_T_COL, align 4
  %68 = call i32 @WR4(%struct.ffec_softc* %66, i32 %67, i32 0)
  %69 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %70 = load i32, i32* @FEC_RMON_T_CRC_ALIGN, align 4
  %71 = call i32 @WR4(%struct.ffec_softc* %69, i32 %70, i32 0)
  %72 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %73 = load i32, i32* @FEC_RMON_T_FRAG, align 4
  %74 = call i32 @WR4(%struct.ffec_softc* %72, i32 %73, i32 0)
  %75 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %76 = load i32, i32* @FEC_RMON_T_JAB, align 4
  %77 = call i32 @WR4(%struct.ffec_softc* %75, i32 %76, i32 0)
  %78 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %79 = load i32, i32* @FEC_RMON_T_MC_PKT, align 4
  %80 = call i32 @WR4(%struct.ffec_softc* %78, i32 %79, i32 0)
  %81 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %82 = load i32, i32* @FEC_RMON_T_OVERSIZE, align 4
  %83 = call i32 @WR4(%struct.ffec_softc* %81, i32 %82, i32 0)
  %84 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %85 = load i32, i32* @FEC_RMON_T_PACKETS, align 4
  %86 = call i32 @WR4(%struct.ffec_softc* %84, i32 %85, i32 0)
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %88 = load i32, i32* @FEC_RMON_T_UNDERSIZE, align 4
  %89 = call i32 @WR4(%struct.ffec_softc* %87, i32 %88, i32 0)
  %90 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %91 = load i32, i32* @FEC_MIBC_REG, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @WR4(%struct.ffec_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %32, %18
  ret void
}

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
