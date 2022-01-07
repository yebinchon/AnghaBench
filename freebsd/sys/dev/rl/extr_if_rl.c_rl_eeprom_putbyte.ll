; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_eeprom_putbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_eeprom_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_EE_DATAIN = common dso_local global i32 0, align 4
@RL_EE_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32)* @rl_eeprom_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_eeprom_putbyte(%struct.rl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %7, %10
  store i32 %11, i32* %5, align 4
  store i32 1024, i32* %6, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @RL_EE_DATAIN, align 4
  %22 = call i32 @EE_SET(i32 %21)
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @RL_EE_DATAIN, align 4
  %25 = call i32 @EE_CLR(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @DELAY(i32 100)
  %28 = load i32, i32* @RL_EE_CLK, align 4
  %29 = call i32 @EE_SET(i32 %28)
  %30 = call i32 @DELAY(i32 150)
  %31 = load i32, i32* @RL_EE_CLK, align 4
  %32 = call i32 @EE_CLR(i32 %31)
  %33 = call i32 @DELAY(i32 100)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %12

37:                                               ; preds = %12
  ret void
}

declare dso_local i32 @EE_SET(i32) #1

declare dso_local i32 @EE_CLR(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
