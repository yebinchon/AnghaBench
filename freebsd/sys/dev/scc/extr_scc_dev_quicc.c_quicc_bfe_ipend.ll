; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_chan*, %struct.scc_bas }
%struct.scc_chan = type { i32, i32 }
%struct.scc_bas = type { i32 }

@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*)* @quicc_bfe_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bfe_ipend(%struct.scc_softc* %0) #0 {
  %2 = alloca %struct.scc_softc*, align 8
  %3 = alloca %struct.scc_bas*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %2, align 8
  %8 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %8, i32 0, i32 2
  store %struct.scc_bas* %9, %struct.scc_bas** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %87, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %90

13:                                               ; preds = %10
  %14 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %14, i32 0, i32 1
  %16 = load %struct.scc_chan*, %struct.scc_chan** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %16, i64 %18
  store %struct.scc_chan* %19, %struct.scc_chan** %4, align 8
  %20 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %21 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %87

25:                                               ; preds = %13
  %26 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %27 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %29 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_lock_spin(i32* %29)
  %31 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @QUICC_REG_SCC_SCCE(i32 %32)
  %34 = call i32 @quicc_read2(%struct.scc_bas* %31, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @QUICC_REG_SCC_SCCE(i32 %36)
  %38 = call i32 @quicc_write2(%struct.scc_bas* %35, i32 %37, i32 -1)
  %39 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %40 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock_spin(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %25
  %46 = load i32, i32* @SER_INT_RXREADY, align 4
  %47 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %48 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %25
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @SER_INT_TXIDLE, align 4
  %57 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %58 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @SER_INT_OVERRUN, align 4
  %67 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %68 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @SER_INT_BREAK, align 4
  %77 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %78 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %83 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %81, %24
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %10

90:                                               ; preds = %10
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @quicc_read2(%struct.scc_bas*, i32) #1

declare dso_local i32 @QUICC_REG_SCC_SCCE(i32) #1

declare dso_local i32 @quicc_write2(%struct.scc_bas*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
