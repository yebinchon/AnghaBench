; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32 }

@BHND_PWRCTL_WAR_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_pwrctl_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pwrctl_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bhnd_pwrctl_softc* @device_get_softc(i32 %5)
  store %struct.bhnd_pwrctl_softc* %6, %struct.bhnd_pwrctl_softc** %3, align 8
  %7 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %8 = call i32 @PWRCTL_LOCK(%struct.bhnd_pwrctl_softc* %7)
  %9 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %10 = load i32, i32* @BHND_PWRCTL_WAR_DOWN, align 4
  %11 = call i32 @bhnd_pwrctl_updateclk(%struct.bhnd_pwrctl_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %13 = call i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc* %12)
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

declare dso_local %struct.bhnd_pwrctl_softc* @device_get_softc(i32) #1

declare dso_local i32 @PWRCTL_LOCK(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i32 @bhnd_pwrctl_updateclk(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
