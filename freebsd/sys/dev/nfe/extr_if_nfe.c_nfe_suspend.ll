; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfe_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.nfe_softc* @device_get_softc(i32 %4)
  store %struct.nfe_softc* %5, %struct.nfe_softc** %3, align 8
  %6 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %7 = call i32 @NFE_LOCK(%struct.nfe_softc* %6)
  %8 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfe_stop(i32 %10)
  %12 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %13 = call i32 @nfe_set_wol(%struct.nfe_softc* %12)
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %17 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %16)
  ret i32 0
}

declare dso_local %struct.nfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_stop(i32) #1

declare dso_local i32 @nfe_set_wol(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
