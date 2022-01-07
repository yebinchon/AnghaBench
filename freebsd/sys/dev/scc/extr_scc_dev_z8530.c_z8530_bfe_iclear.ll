; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_z8530_bfe_iclear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_z8530_bfe_iclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_bas }
%struct.scc_bas = type { i32 }
%struct.scc_chan = type { i32, i32 }

@CHAN_A = common dso_local global i32 0, align 4
@CHAN_B = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i64 0, align 8
@CR_RSTTXI = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i64 0, align 8
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@CR_RSTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*, %struct.scc_chan*)* @z8530_bfe_iclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bfe_iclear(%struct.scc_softc* %0, %struct.scc_chan* %1) #0 {
  %3 = alloca %struct.scc_softc*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca %struct.scc_bas*, align 8
  %6 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %3, align 8
  store %struct.scc_chan* %1, %struct.scc_chan** %4, align 8
  %7 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %7, i32 0, i32 1
  store %struct.scc_bas* %8, %struct.scc_bas** %5, align 8
  %9 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %10 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CHAN_A, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CHAN_B, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock_spin(i32* %20)
  %22 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %23 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SER_INT_TXIDLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @REG_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @CR_RSTTXI, align 4
  %35 = call i32 @scc_setreg(%struct.scc_bas* %29, i64 %33, i32 %34)
  %36 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %37 = call i32 @scc_barrier(%struct.scc_bas* %36)
  br label %38

38:                                               ; preds = %28, %17
  %39 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %40 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SER_INT_RXREADY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @REG_DATA, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @scc_getreg(%struct.scc_bas* %46, i64 %50)
  %52 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %53 = call i32 @scc_barrier(%struct.scc_bas* %52)
  br label %54

54:                                               ; preds = %45, %38
  %55 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %56 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SER_INT_OVERRUN, align 4
  %59 = load i32, i32* @SER_INT_BREAK, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @REG_CTRL, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* @CR_RSTERR, align 4
  %70 = call i32 @scc_setreg(%struct.scc_bas* %64, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock_spin(i32* %73)
  ret i32 0
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @scc_setreg(%struct.scc_bas*, i64, i32) #1

declare dso_local i32 @scc_barrier(%struct.scc_bas*) #1

declare dso_local i32 @scc_getreg(%struct.scc_bas*, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
