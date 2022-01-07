; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i64, i32, i32 }

@SGMIIC = common dso_local global i64 0, align 8
@BLOCK_7 = common dso_local global i32 0, align 4
@LANE_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @nlm_xlpge_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpge_mii_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlm_xlpge_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.nlm_xlpge_softc* @device_get_softc(i32 %9)
  store %struct.nlm_xlpge_softc* %10, %struct.nlm_xlpge_softc** %7, align 8
  %11 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SGMIIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %7, align 8
  %18 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %7, align 8
  %21 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BLOCK_7, align 4
  %24 = load i32, i32* @LANE_CFG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nlm_gmac_mdio_read(i32 %19, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %29

28:                                               ; preds = %3
  store i32 65535, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.nlm_xlpge_softc* @device_get_softc(i32) #1

declare dso_local i32 @nlm_gmac_mdio_read(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
