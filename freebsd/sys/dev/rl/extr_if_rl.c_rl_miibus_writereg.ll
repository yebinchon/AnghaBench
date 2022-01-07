; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_writereg.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rl_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rl_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.rl_softc* @device_get_softc(i32 %12)
  store %struct.rl_softc* %13, %struct.rl_softc** %10, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RL_8139, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %32 [
    i32 131, label %21
    i32 130, label %23
    i32 134, label %25
    i32 133, label %27
    i32 132, label %29
    i32 129, label %31
    i32 128, label %31
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @RL_BMCR, align 4
  store i32 %22, i32* %11, align 4
  br label %37

23:                                               ; preds = %19
  %24 = load i32, i32* @RL_BMSR, align 4
  store i32 %24, i32* %11, align 4
  br label %37

25:                                               ; preds = %19
  %26 = load i32, i32* @RL_ANAR, align 4
  store i32 %26, i32* %11, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load i32, i32* @RL_ANER, align 4
  store i32 %28, i32* %11, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load i32, i32* @RL_LPAR, align 4
  store i32 %30, i32* %11, align 4
  br label %37

31:                                               ; preds = %19, %19
  store i32 0, i32* %5, align 4
  br label %48

32:                                               ; preds = %19
  %33 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %48

37:                                               ; preds = %29, %27, %25, %23, %21
  %38 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @CSR_WRITE_2(%struct.rl_softc* %38, i32 %39, i32 %40)
  store i32 0, i32* %5, align 4
  br label %48

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mii_bitbang_writereg(i32 %43, i32* @rl_mii_bitbang_ops, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %37, %32, %31
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @mii_bitbang_writereg(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
