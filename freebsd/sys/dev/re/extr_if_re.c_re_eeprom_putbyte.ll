; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_eeprom_putbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_eeprom_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32 }

@RL_9346_READ = common dso_local global i32 0, align 4
@RL_EE_DATAIN = common dso_local global i32 0, align 4
@RL_EE_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32)* @re_eeprom_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_eeprom_putbyte(%struct.rl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RL_9346_READ, align 4
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %8, %11
  %13 = or i32 %7, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 3
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @RL_EE_DATAIN, align 4
  %29 = call i32 @EE_SET(i32 %28)
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @RL_EE_DATAIN, align 4
  %32 = call i32 @EE_CLR(i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 @DELAY(i32 100)
  %35 = load i32, i32* @RL_EE_CLK, align 4
  %36 = call i32 @EE_SET(i32 %35)
  %37 = call i32 @DELAY(i32 150)
  %38 = load i32, i32* @RL_EE_CLK, align 4
  %39 = call i32 @EE_CLR(i32 %38)
  %40 = call i32 @DELAY(i32 100)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %19

44:                                               ; preds = %19
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
