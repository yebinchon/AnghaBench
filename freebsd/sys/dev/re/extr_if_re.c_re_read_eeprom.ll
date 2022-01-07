; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_EECMD = common dso_local global i32 0, align 4
@RL_EEMODE_PROGRAM = common dso_local global i32 0, align 4
@RL_EE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i64, i32, i32)* @re_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_read_eeprom(%struct.rl_softc* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rl_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %13 = load i32, i32* @RL_EECMD, align 4
  %14 = load i32, i32* @RL_EEMODE_PROGRAM, align 4
  %15 = call i32 @CSR_SETBIT_1(%struct.rl_softc* %12, i32 %13, i32 %14)
  %16 = call i32 @DELAY(i32 100)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %43, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %23 = load i32, i32* @RL_EECMD, align 4
  %24 = load i32, i32* @RL_EE_SEL, align 4
  %25 = call i32 @CSR_SETBIT_1(%struct.rl_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 @re_eeprom_getword(%struct.rl_softc* %26, i32 %29, i32* %10)
  %31 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %32 = load i32, i32* @RL_EECMD, align 4
  %33 = load i32, i32* @RL_EE_SEL, align 4
  %34 = call i32 @CSR_CLRBIT_1(%struct.rl_softc* %31, i32 %32, i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %21
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %48 = load i32, i32* @RL_EECMD, align 4
  %49 = load i32, i32* @RL_EEMODE_PROGRAM, align 4
  %50 = call i32 @CSR_CLRBIT_1(%struct.rl_softc* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @CSR_SETBIT_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @re_eeprom_getword(%struct.rl_softc*, i32, i32*) #1

declare dso_local i32 @CSR_CLRBIT_1(%struct.rl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
