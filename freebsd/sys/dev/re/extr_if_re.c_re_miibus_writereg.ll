; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, i32 }

@RL_8169 = common dso_local global i64 0, align 8
@RL_BMCR = common dso_local global i32 0, align 4
@RL_8139CPLUS = common dso_local global i64 0, align 8
@BMCR_LOOP = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@RL_BMSR = common dso_local global i32 0, align 4
@RL_ANAR = common dso_local global i32 0, align 4
@RL_ANER = common dso_local global i32 0, align 4
@RL_LPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad phy register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @re_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rl_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rl_softc* @device_get_softc(i32 %13)
  store %struct.rl_softc* %14, %struct.rl_softc** %10, align 8
  %15 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %16 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RL_8169, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @re_gmii_writereg(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %53 [
    i32 131, label %29
    i32 130, label %44
    i32 134, label %46
    i32 133, label %48
    i32 132, label %50
    i32 129, label %52
    i32 128, label %52
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @RL_BMCR, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %32 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RL_8139CPLUS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @BMCR_LOOP, align 4
  %38 = load i32, i32* @BMCR_ISO, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %36, %29
  br label %58

44:                                               ; preds = %27
  %45 = load i32, i32* @RL_BMSR, align 4
  store i32 %45, i32* %11, align 4
  br label %58

46:                                               ; preds = %27
  %47 = load i32, i32* @RL_ANAR, align 4
  store i32 %47, i32* %11, align 4
  br label %58

48:                                               ; preds = %27
  %49 = load i32, i32* @RL_ANER, align 4
  store i32 %49, i32* %11, align 4
  br label %58

50:                                               ; preds = %27
  %51 = load i32, i32* @RL_LPAR, align 4
  store i32 %51, i32* %11, align 4
  br label %58

52:                                               ; preds = %27, %27
  store i32 0, i32* %5, align 4
  br label %63

53:                                               ; preds = %27
  %54 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %55 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %63

58:                                               ; preds = %50, %48, %46, %44, %43
  %59 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CSR_WRITE_2(%struct.rl_softc* %59, i32 %60, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %53, %52, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @re_gmii_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
