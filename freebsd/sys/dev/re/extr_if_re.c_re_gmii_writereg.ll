; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_gmii_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_gmii_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_PHYAR = common dso_local global i32 0, align 4
@RL_PHYAR_PHYDATA = common dso_local global i32 0, align 4
@RL_PHYAR_BUSY = common dso_local global i32 0, align 4
@RL_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PHY write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @re_gmii_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_gmii_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rl_softc* @device_get_softc(i32 %13)
  store %struct.rl_softc* %14, %struct.rl_softc** %10, align 8
  %15 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %16 = load i32, i32* @RL_PHYAR, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @RL_PHYAR_PHYDATA, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @RL_PHYAR_BUSY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @CSR_WRITE_4(%struct.rl_softc* %15, i32 %16, i32 %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %41, %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @RL_PHY_TIMEOUT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %32 = load i32, i32* @RL_PHYAR, align 4
  %33 = call i32 @CSR_READ_4(%struct.rl_softc* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @RL_PHYAR_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %44

39:                                               ; preds = %30
  %40 = call i32 @DELAY(i32 25)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %26

44:                                               ; preds = %38, %26
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @RL_PHY_TIMEOUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.rl_softc*, %struct.rl_softc** %10, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %55

53:                                               ; preds = %44
  %54 = call i32 @DELAY(i32 20)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.rl_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
