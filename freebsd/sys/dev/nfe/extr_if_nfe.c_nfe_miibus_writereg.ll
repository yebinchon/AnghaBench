; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }

@NFE_PHY_STATUS = common dso_local global i32 0, align 4
@NFE_PHY_CTL = common dso_local global i32 0, align 4
@NFE_PHY_BUSY = common dso_local global i32 0, align 4
@NFE_PHY_DATA = common dso_local global i32 0, align 4
@NFE_PHY_WRITE = common dso_local global i32 0, align 4
@NFE_PHYADD_SHIFT = common dso_local global i32 0, align 4
@NFE_TIMEOUT = common dso_local global i32 0, align 4
@nfedebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @nfe_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfe_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.nfe_softc* @device_get_softc(i32 %12)
  store %struct.nfe_softc* %13, %struct.nfe_softc** %9, align 8
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %15 = load i32, i32* @NFE_PHY_STATUS, align 4
  %16 = call i32 @NFE_WRITE(%struct.nfe_softc* %14, i32 %15, i32 15)
  %17 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %18 = load i32, i32* @NFE_PHY_CTL, align 4
  %19 = call i32 @NFE_READ(%struct.nfe_softc* %17, i32 %18)
  %20 = load i32, i32* @NFE_PHY_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %25 = load i32, i32* @NFE_PHY_CTL, align 4
  %26 = load i32, i32* @NFE_PHY_BUSY, align 4
  %27 = call i32 @NFE_WRITE(%struct.nfe_softc* %24, i32 %25, i32 %26)
  %28 = call i32 @DELAY(i32 100)
  br label %29

29:                                               ; preds = %23, %4
  %30 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %31 = load i32, i32* @NFE_PHY_DATA, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @NFE_WRITE(%struct.nfe_softc* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @NFE_PHY_WRITE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NFE_PHYADD_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %42 = load i32, i32* @NFE_PHY_CTL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @NFE_WRITE(%struct.nfe_softc* %41, i32 %42, i32 %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %59, %29
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NFE_TIMEOUT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = call i32 @DELAY(i32 100)
  %51 = load %struct.nfe_softc*, %struct.nfe_softc** %9, align 8
  %52 = load i32, i32* @NFE_PHY_CTL, align 4
  %53 = call i32 @NFE_READ(%struct.nfe_softc* %51, i32 %52)
  %54 = load i32, i32* @NFE_PHY_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %62

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %45

62:                                               ; preds = %57, %45
  ret i32 0
}

declare dso_local %struct.nfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
