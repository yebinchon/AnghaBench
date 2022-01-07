; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32, i32 }

@NGE_FLAG_TBI = common dso_local global i32 0, align 4
@NGE_TBI_BMCR = common dso_local global i32 0, align 4
@BMSR_ANEG = common dso_local global i32 0, align 4
@BMSR_EXTCAP = common dso_local global i32 0, align 4
@BMSR_EXTSTAT = common dso_local global i32 0, align 4
@NGE_TBI_BMSR = common dso_local global i32 0, align 4
@NGE_TBIBMSR_ANEG_DONE = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@NGE_TBIBMSR_LINKSTAT = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@NGE_TBI_ANAR = common dso_local global i32 0, align 4
@NGE_TBI_ANLPAR = common dso_local global i32 0, align 4
@NGE_TBI_ANER = common dso_local global i32 0, align 4
@NGE_TBI_ESR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bad phy register read : %d\0A\00", align 1
@nge_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @nge_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nge_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.nge_softc* @device_get_softc(i32 %10)
  store %struct.nge_softc* %11, %struct.nge_softc** %8, align 8
  %12 = load %struct.nge_softc*, %struct.nge_softc** %8, align 8
  %13 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NGE_FLAG_TBI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %78

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %63 [
    i32 132, label %24
    i32 131, label %26
    i32 135, label %54
    i32 133, label %56
    i32 134, label %58
    i32 130, label %60
    i32 129, label %62
    i32 128, label %62
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @NGE_TBI_BMCR, align 4
  store i32 %25, i32* %7, align 4
  br label %69

26:                                               ; preds = %22
  %27 = load i32, i32* @BMSR_ANEG, align 4
  %28 = load i32, i32* @BMSR_EXTCAP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BMSR_EXTSTAT, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nge_softc*, %struct.nge_softc** %8, align 8
  %33 = load i32, i32* @NGE_TBI_BMSR, align 4
  %34 = call i32 @CSR_READ_4(%struct.nge_softc* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @NGE_TBIBMSR_ANEG_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i32, i32* @BMSR_ACOMP, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NGE_TBIBMSR_LINKSTAT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @BMSR_LINK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %78

54:                                               ; preds = %22
  %55 = load i32, i32* @NGE_TBI_ANAR, align 4
  store i32 %55, i32* %7, align 4
  br label %69

56:                                               ; preds = %22
  %57 = load i32, i32* @NGE_TBI_ANLPAR, align 4
  store i32 %57, i32* %7, align 4
  br label %69

58:                                               ; preds = %22
  %59 = load i32, i32* @NGE_TBI_ANER, align 4
  store i32 %59, i32* %7, align 4
  br label %69

60:                                               ; preds = %22
  %61 = load i32, i32* @NGE_TBI_ESR, align 4
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %22, %22
  store i32 0, i32* %4, align 4
  br label %78

63:                                               ; preds = %22
  %64 = load %struct.nge_softc*, %struct.nge_softc** %8, align 8
  %65 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %4, align 4
  br label %78

69:                                               ; preds = %60, %58, %56, %54, %24
  %70 = load %struct.nge_softc*, %struct.nge_softc** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @CSR_READ_4(%struct.nge_softc* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %78

73:                                               ; preds = %3
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mii_bitbang_readreg(i32 %74, i32* @nge_mii_bitbang_ops, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %69, %63, %62, %52, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.nge_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mii_bitbang_readreg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
