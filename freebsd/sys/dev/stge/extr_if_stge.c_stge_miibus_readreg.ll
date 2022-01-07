; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@STGE_PhyCtrl = common dso_local global i32 0, align 4
@stge_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @stge_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stge_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.stge_softc* @device_get_softc(i32 %11)
  store %struct.stge_softc* %12, %struct.stge_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @STGE_PhyCtrl, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.stge_softc*, %struct.stge_softc** %8, align 8
  %18 = call i32 @STGE_MII_LOCK(%struct.stge_softc* %17)
  %19 = load %struct.stge_softc*, %struct.stge_softc** %8, align 8
  %20 = load i32, i32* @STGE_PhyCtrl, align 4
  %21 = call i32 @CSR_READ_1(%struct.stge_softc* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.stge_softc*, %struct.stge_softc** %8, align 8
  %23 = call i32 @STGE_MII_UNLOCK(%struct.stge_softc* %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.stge_softc*, %struct.stge_softc** %8, align 8
  %27 = call i32 @STGE_MII_LOCK(%struct.stge_softc* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mii_bitbang_readreg(i32 %28, i32* @stge_mii_bitbang_ops, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.stge_softc*, %struct.stge_softc** %8, align 8
  %33 = call i32 @STGE_MII_UNLOCK(%struct.stge_softc* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.stge_softc* @device_get_softc(i32) #1

declare dso_local i32 @STGE_MII_LOCK(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.stge_softc*, i32) #1

declare dso_local i32 @STGE_MII_UNLOCK(%struct.stge_softc*) #1

declare dso_local i32 @mii_bitbang_readreg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
