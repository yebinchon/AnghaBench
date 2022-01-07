; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_eeprom_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_eeprom_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_EECMD = common dso_local global i32 0, align 4
@RL_EEMODE_PROGRAM = common dso_local global i32 0, align 4
@RL_EE_SEL = common dso_local global i32 0, align 4
@RL_EE_CLK = common dso_local global i32 0, align 4
@RL_EE_DATAOUT = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32, i32*)* @rl_eeprom_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_eeprom_getword(%struct.rl_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %10 = load i32, i32* @RL_EECMD, align 4
  %11 = load i32, i32* @RL_EEMODE_PROGRAM, align 4
  %12 = load i32, i32* @RL_EE_SEL, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CSR_WRITE_1(%struct.rl_softc* %9, i32 %10, i32 %13)
  %15 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @rl_eeprom_putbyte(%struct.rl_softc* %15, i32 %16)
  %18 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %19 = load i32, i32* @RL_EECMD, align 4
  %20 = load i32, i32* @RL_EEMODE_PROGRAM, align 4
  %21 = load i32, i32* @RL_EE_SEL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @CSR_WRITE_1(%struct.rl_softc* %18, i32 %19, i32 %22)
  store i32 32768, i32* %7, align 4
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i32, i32* @RL_EE_CLK, align 4
  %29 = call i32 @EE_SET(i32 %28)
  %30 = call i32 @DELAY(i32 100)
  %31 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %32 = load i32, i32* @RL_EECMD, align 4
  %33 = call i32 @CSR_READ_1(%struct.rl_softc* %31, i32 %32)
  %34 = load i32, i32* @RL_EE_DATAOUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i32, i32* @RL_EE_CLK, align 4
  %43 = call i32 @EE_CLR(i32 %42)
  %44 = call i32 @DELAY(i32 100)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %50 = load i32, i32* @RL_EECMD, align 4
  %51 = load i32, i32* @RL_EEMODE_OFF, align 4
  %52 = call i32 @CSR_WRITE_1(%struct.rl_softc* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @rl_eeprom_putbyte(%struct.rl_softc*, i32) #1

declare dso_local i32 @EE_SET(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @EE_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
