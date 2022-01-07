; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_switch_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_switch_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_EFUSE_ACCESS = common dso_local global i32 0, align 4
@R92C_EFUSE_ACCESS_ON = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_ELDR = common dso_local global i32 0, align 4
@R92C_SYS_CLKR = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_LOADER_EN = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_ANA8M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*)* @rtwn_efuse_switch_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_efuse_switch_power(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = load i32, i32* @R92C_EFUSE_ACCESS, align 4
  %8 = load i32, i32* @R92C_EFUSE_ACCESS_ON, align 4
  %9 = call i32 @rtwn_write_1(%struct.rtwn_softc* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %17 = call i32 @rtwn_read_2(%struct.rtwn_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @R92C_SYS_FUNC_EN_ELDR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %24 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @R92C_SYS_FUNC_EN_ELDR, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @rtwn_write_2(%struct.rtwn_softc* %23, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %14
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %36 = load i32, i32* @R92C_SYS_CLKR, align 4
  %37 = call i32 @rtwn_read_2(%struct.rtwn_softc* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @R92C_SYS_CLKR_LOADER_EN, align 4
  %40 = load i32, i32* @R92C_SYS_CLKR_ANA8M, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @R92C_SYS_CLKR_LOADER_EN, align 4
  %44 = load i32, i32* @R92C_SYS_CLKR_ANA8M, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %49 = load i32, i32* @R92C_SYS_CLKR, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @R92C_SYS_CLKR_LOADER_EN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @R92C_SYS_CLKR_ANA8M, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @rtwn_write_2(%struct.rtwn_softc* %48, i32 %49, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %34
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %31, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_read_2(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
