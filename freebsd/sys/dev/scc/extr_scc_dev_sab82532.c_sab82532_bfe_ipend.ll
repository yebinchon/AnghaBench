; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_sab82532.c_sab82532_bfe_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_sab82532.c_sab82532_bfe_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_chan*, %struct.scc_bas }
%struct.scc_chan = type { i32 }
%struct.scc_bas = type { i32 }

@SAB_NCHAN = common dso_local global i32 0, align 4
@SAB_CHANLEN = common dso_local global i32 0, align 4
@SAB_ISR0 = common dso_local global i64 0, align 8
@SAB_ISR1 = common dso_local global i64 0, align 8
@SAB_ISR0_TIME = common dso_local global i32 0, align 4
@SAB_STAR = common dso_local global i64 0, align 8
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i64 0, align 8
@SAB_CMDR_RFRD = common dso_local global i32 0, align 4
@SAB_ISR1_BRKT = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@SAB_ISR0_RFO = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SAB_ISR0_TCD = common dso_local global i32 0, align 4
@SAB_ISR0_RPF = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SAB_ISR0_CDSC = common dso_local global i32 0, align 4
@SAB_ISR1_CSC = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@SAB_ISR1_ALLS = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*)* @sab82532_bfe_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bfe_ipend(%struct.scc_softc* %0) #0 {
  %2 = alloca %struct.scc_softc*, align 8
  %3 = alloca %struct.scc_bas*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %2, align 8
  %10 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %10, i32 0, i32 2
  store %struct.scc_bas* %11, %struct.scc_bas** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %142, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SAB_NCHAN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %145

16:                                               ; preds = %12
  %17 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %17, i32 0, i32 1
  %19 = load %struct.scc_chan*, %struct.scc_chan** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %19, i64 %21
  store %struct.scc_chan* %22, %struct.scc_chan** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SAB_CHANLEN, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock_spin(i32* %27)
  %29 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @SAB_ISR0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @scc_getreg(%struct.scc_bas* %29, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @SAB_ISR1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @scc_getreg(%struct.scc_bas* %35, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %42 = call i32 @scc_barrier(%struct.scc_bas* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SAB_ISR0_TIME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %58, %47
  %49 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @SAB_STAR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @scc_getreg(%struct.scc_bas* %49, i64 %53)
  %55 = load i32, i32* @SAB_STAR_CEC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %48

59:                                               ; preds = %48
  %60 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @SAB_CMDR, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @SAB_CMDR_RFRD, align 4
  %66 = call i32 @scc_setreg(%struct.scc_bas* %60, i64 %64, i32 %65)
  %67 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %68 = call i32 @scc_barrier(%struct.scc_bas* %67)
  br label %69

69:                                               ; preds = %59, %16
  %70 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %71 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock_spin(i32* %71)
  %73 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %74 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SAB_ISR1_BRKT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* @SER_INT_BREAK, align 4
  %81 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %82 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %69
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @SAB_ISR0_RFO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @SER_INT_OVERRUN, align 4
  %92 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %93 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @SAB_ISR0_TCD, align 4
  %99 = load i32, i32* @SAB_ISR0_RPF, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @SER_INT_RXREADY, align 4
  %105 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %106 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %96
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SAB_ISR0_CDSC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @SAB_ISR1_CSC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114, %109
  %120 = load i32, i32* @SER_INT_SIGCHG, align 4
  %121 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %122 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @SAB_ISR1_ALLS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* @SER_INT_TXIDLE, align 4
  %132 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %133 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %138 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %12

145:                                              ; preds = %12
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @scc_getreg(%struct.scc_bas*, i64) #1

declare dso_local i32 @scc_barrier(%struct.scc_bas*) #1

declare dso_local i32 @scc_setreg(%struct.scc_bas*, i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
