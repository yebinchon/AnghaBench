; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_eeprom_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_eeprom_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_EE_CLK = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EE_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32, i32*)* @re_eeprom_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_eeprom_getword(%struct.rl_softc* %0, i32 %1, i32* %2) #0 {
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
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @re_eeprom_putbyte(%struct.rl_softc* %9, i32 %10)
  store i32 32768, i32* %7, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* @RL_EE_CLK, align 4
  %17 = call i32 @EE_SET(i32 %16)
  %18 = call i32 @DELAY(i32 100)
  %19 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %20 = load i32, i32* @RL_EECMD, align 4
  %21 = call i32 @CSR_READ_1(%struct.rl_softc* %19, i32 %20)
  %22 = load i32, i32* @RL_EE_DATAOUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* @RL_EE_CLK, align 4
  %31 = call i32 @EE_CLR(i32 %30)
  %32 = call i32 @DELAY(i32 100)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  ret void
}

declare dso_local i32 @re_eeprom_putbyte(%struct.rl_softc*, i32) #1

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
