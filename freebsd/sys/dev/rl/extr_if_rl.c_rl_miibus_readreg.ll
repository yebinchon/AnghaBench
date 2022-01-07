; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, i32 }

@RL_8139 = common dso_local global i64 0, align 8
@RL_BMCR = common dso_local global i32 0, align 4
@RL_BMSR = common dso_local global i32 0, align 4
@RL_ANAR = common dso_local global i32 0, align 4
@RL_ANER = common dso_local global i32 0, align 4
@RL_LPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad phy register\0A\00", align 1
@rl_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rl_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rl_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.rl_softc* @device_get_softc(i32 %10)
  store %struct.rl_softc* %11, %struct.rl_softc** %8, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %13 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RL_8139, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %33 [
    i32 132, label %19
    i32 131, label %21
    i32 135, label %23
    i32 134, label %25
    i32 133, label %27
    i32 130, label %29
    i32 129, label %29
    i32 128, label %30
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @RL_BMCR, align 4
  store i32 %20, i32* %9, align 4
  br label %38

21:                                               ; preds = %17
  %22 = load i32, i32* @RL_BMSR, align 4
  store i32 %22, i32* %9, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i32, i32* @RL_ANAR, align 4
  store i32 %24, i32* %9, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* @RL_ANER, align 4
  store i32 %26, i32* %9, align 4
  br label %38

27:                                               ; preds = %17
  %28 = load i32, i32* @RL_LPAR, align 4
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %17, %17
  store i32 0, i32* %4, align 4
  br label %47

30:                                               ; preds = %17
  %31 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %32 = call i32 @CSR_READ_1(%struct.rl_softc* %31, i32 128)
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %17
  %34 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %35 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

38:                                               ; preds = %27, %25, %23, %21, %19
  %39 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @CSR_READ_2(%struct.rl_softc* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mii_bitbang_readreg(i32 %43, i32* @rl_mii_bitbang_ops, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %38, %33, %30, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @mii_bitbang_readreg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
