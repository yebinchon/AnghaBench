; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_wars_hwup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_wars_hwup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_bhndb_softc = type { i32 }

@SIBA_QUIRK_PCIE_D11_SB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siba_bhndb_softc*)* @siba_bhndb_wars_hwup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_bhndb_wars_hwup(%struct.siba_bhndb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siba_bhndb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.siba_bhndb_softc* %0, %struct.siba_bhndb_softc** %3, align 8
  %5 = load %struct.siba_bhndb_softc*, %struct.siba_bhndb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.siba_bhndb_softc, %struct.siba_bhndb_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SIBA_QUIRK_PCIE_D11_SB_TIMEOUT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.siba_bhndb_softc*, %struct.siba_bhndb_softc** %3, align 8
  %13 = call i32 @siba_bhndb_wars_pcie_clear_d11_timeout(%struct.siba_bhndb_softc* %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @siba_bhndb_wars_pcie_clear_d11_timeout(%struct.siba_bhndb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
