; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i64, i32, i32 }

@SGMIIC = common dso_local global i64 0, align 8
@BLOCK_7 = common dso_local global i32 0, align 4
@LANE_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @nlm_xlpge_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpge_mii_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlm_xlpge_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.nlm_xlpge_softc* @device_get_softc(i32 %10)
  store %struct.nlm_xlpge_softc* %11, %struct.nlm_xlpge_softc** %9, align 8
  %12 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %9, align 8
  %13 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SGMIIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %9, align 8
  %19 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %9, align 8
  %22 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLOCK_7, align 4
  %25 = load i32, i32* @LANE_CFG, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @nlm_gmac_mdio_write(i32 %20, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %17, %4
  ret i32 0
}

declare dso_local %struct.nlm_xlpge_softc* @device_get_softc(i32) #1

declare dso_local i32 @nlm_gmac_mdio_write(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
