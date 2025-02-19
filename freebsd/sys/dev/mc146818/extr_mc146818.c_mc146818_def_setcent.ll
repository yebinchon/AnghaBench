; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mc146818/extr_mc146818.c_mc146818_def_setcent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mc146818/extr_mc146818.c_mc146818_def_setcent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc146818_softc = type { i32 (i32, i32, i32)* }

@MC_CENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mc146818_def_setcent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc146818_def_setcent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc146818_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mc146818_softc* @device_get_softc(i32 %6)
  store %struct.mc146818_softc* %7, %struct.mc146818_softc** %5, align 8
  %8 = load %struct.mc146818_softc*, %struct.mc146818_softc** %5, align 8
  %9 = getelementptr inbounds %struct.mc146818_softc, %struct.mc146818_softc* %8, i32 0, i32 0
  %10 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MC_CENT, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %10(i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local %struct.mc146818_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
