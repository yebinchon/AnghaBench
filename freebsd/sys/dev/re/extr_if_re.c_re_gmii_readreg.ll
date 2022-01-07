; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_gmii_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_gmii_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_GMEDIASTAT = common dso_local global i32 0, align 4
@RL_PHYAR = common dso_local global i32 0, align 4
@RL_PHY_TIMEOUT = common dso_local global i32 0, align 4
@RL_PHYAR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PHY read failed\0A\00", align 1
@RL_PHYAR_PHYDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @re_gmii_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_gmii_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rl_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.rl_softc* @device_get_softc(i32 %11)
  store %struct.rl_softc* %12, %struct.rl_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RL_GMEDIASTAT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %18 = load i32, i32* @RL_GMEDIASTAT, align 4
  %19 = call i32 @CSR_READ_1(%struct.rl_softc* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %23 = load i32, i32* @RL_PHYAR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 16
  %26 = call i32 @CSR_WRITE_4(%struct.rl_softc* %22, i32 %23, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %42, %21
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RL_PHY_TIMEOUT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %33 = load i32, i32* @RL_PHYAR, align 4
  %34 = call i32 @CSR_READ_4(%struct.rl_softc* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RL_PHYAR_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  %41 = call i32 @DELAY(i32 25)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %27

45:                                               ; preds = %39, %27
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @RL_PHY_TIMEOUT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  %51 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %59

54:                                               ; preds = %45
  %55 = call i32 @DELAY(i32 20)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @RL_PHYAR_PHYDATA, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %49, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

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
