; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_quicc.c_quicc_bfe_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { %struct.scc_bas }
%struct.scc_bas = type { i32 }
%struct.scc_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*, %struct.scc_chan*)* @quicc_bfe_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bfe_enabled(%struct.scc_softc* %0, %struct.scc_chan* %1) #0 {
  %3 = alloca %struct.scc_softc*, align 8
  %4 = alloca %struct.scc_chan*, align 8
  %5 = alloca %struct.scc_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %3, align 8
  store %struct.scc_chan* %1, %struct.scc_chan** %4, align 8
  %9 = load %struct.scc_softc*, %struct.scc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %9, i32 0, i32 0
  store %struct.scc_bas* %10, %struct.scc_bas** %5, align 8
  %11 = load %struct.scc_chan*, %struct.scc_chan** %4, align 8
  %12 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @QUICC_REG_SCC_TODR(i32 %16)
  %18 = call i32 @quicc_read2(%struct.scc_bas* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @QUICC_REG_SCC_TODR(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @quicc_write2(%struct.scc_bas* %19, i32 %21, i32 %23)
  %25 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @QUICC_REG_SCC_TODR(i32 %26)
  %28 = call i32 @quicc_read2(%struct.scc_bas* %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.scc_bas*, %struct.scc_bas** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @QUICC_REG_SCC_TODR(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @quicc_write2(%struct.scc_bas* %29, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %36, 32768
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  ret i32 %39
}

declare dso_local i32 @quicc_read2(%struct.scc_bas*, i32) #1

declare dso_local i32 @QUICC_REG_SCC_TODR(i32) #1

declare dso_local i32 @quicc_write2(%struct.scc_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
