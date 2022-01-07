; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_sab82532.c_sab82532_bfe_iclear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_sab82532.c_sab82532_bfe_iclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_bas }
%struct.scc_bas = type { i32 }
%struct.scc_chan = type { i32, i32 }

@SAB_CHANLEN = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SAB_STAR = common dso_local global i64 0, align 8
@SAB_STAR_RFNE = common dso_local global i32 0, align 4
@SAB_RBCL = common dso_local global i64 0, align 8
@SAB_RFIFO = common dso_local global i64 0, align 8
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i64 0, align 8
@SAB_CMDR_RMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*, %struct.scc_chan*)* @sab82532_bfe_iclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bfe_iclear(%struct.scc_softc* %0, %struct.scc_chan* %1) #0 {
  %3 = alloca %struct.scc_softc*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca %struct.scc_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %3, align 8
  store %struct.scc_chan* %1, %struct.scc_chan** %4, align 8
  %9 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %9, i32 0, i32 1
  store %struct.scc_bas* %10, %struct.scc_bas** %5, align 8
  %11 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %12 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @SAB_CHANLEN, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock_spin(i32* %18)
  %20 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %21 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SER_INT_RXREADY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %2
  %27 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @SAB_STAR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @scc_getreg(%struct.scc_bas* %27, i64 %31)
  %33 = load i32, i32* @SAB_STAR_RFNE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %26
  %37 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @SAB_RBCL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @scc_getreg(%struct.scc_bas* %37, i64 %41)
  %43 = and i32 %42, 31
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 32, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %36
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @SAB_RFIFO, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @scc_getreg(%struct.scc_bas* %53, i64 %57)
  %59 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @SAB_RFIFO, align 8
  %63 = add nsw i64 %61, %62
  %64 = add nsw i64 %63, 1
  %65 = call i32 @scc_getreg(%struct.scc_bas* %59, i64 %64)
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %6, align 4
  br label %48

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69, %26
  br label %71

71:                                               ; preds = %81, %70
  %72 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @SAB_STAR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @scc_getreg(%struct.scc_bas* %72, i64 %76)
  %78 = load i32, i32* @SAB_STAR_CEC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %71

82:                                               ; preds = %71
  %83 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @SAB_CMDR, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* @SAB_CMDR_RMC, align 4
  %89 = call i32 @scc_setreg(%struct.scc_bas* %83, i64 %87, i32 %88)
  %90 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %91 = call i32 @scc_barrier(%struct.scc_bas* %90)
  br label %92

92:                                               ; preds = %82, %2
  %93 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %94 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %93, i32 0, i32 0
  %95 = call i32 @mtx_unlock_spin(i32* %94)
  ret i32 0
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @scc_getreg(%struct.scc_bas*, i64) #1

declare dso_local i32 @scc_setreg(%struct.scc_bas*, i64, i32) #1

declare dso_local i32 @scc_barrier(%struct.scc_bas*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
