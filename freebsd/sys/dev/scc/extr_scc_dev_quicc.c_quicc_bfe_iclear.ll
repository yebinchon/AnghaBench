; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_iclear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_iclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_bas }
%struct.scc_bas = type { i32 }
%struct.scc_chan = type { i32, i64 }

@SER_INT_RXREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*, %struct.scc_chan*)* @quicc_bfe_iclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bfe_iclear(%struct.scc_softc* %0, %struct.scc_chan* %1) #0 {
  %3 = alloca %struct.scc_softc*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca %struct.scc_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %3, align 8
  store %struct.scc_chan* %1, %struct.scc_chan** %4, align 8
  %8 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %8, i32 0, i32 1
  store %struct.scc_bas* %9, %struct.scc_bas** %5, align 8
  %10 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock_spin(i32* %11)
  %13 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %14 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SER_INT_RXREADY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %21 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %22 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @QUICC_PRAM_SCC_RBASE(i64 %24)
  %26 = call i32 @quicc_read2(%struct.scc_bas* %20, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @quicc_read2(%struct.scc_bas* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 4
  %33 = call i32 @quicc_read4(%struct.scc_bas* %30, i32 %32)
  %34 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 36864
  %38 = call i32 @quicc_write2(%struct.scc_bas* %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %19, %2
  %40 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock_spin(i32* %41)
  ret i32 0
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @quicc_read2(%struct.scc_bas*, i32) #1

declare dso_local i32 @QUICC_PRAM_SCC_RBASE(i64) #1

declare dso_local i32 @quicc_read4(%struct.scc_bas*, i32) #1

declare dso_local i32 @quicc_write2(%struct.scc_bas*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
