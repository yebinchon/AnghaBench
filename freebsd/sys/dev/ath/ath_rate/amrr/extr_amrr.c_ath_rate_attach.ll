; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ratectrl = type { i32 }
%struct.ath_softc = type { i32 }
%struct.amrr_softc = type { %struct.ath_ratectrl }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath_ratectrl* @ath_rate_attach(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_ratectrl*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.amrr_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.amrr_softc* @malloc(i32 4, i32 %5, i32 %8)
  store %struct.amrr_softc* %9, %struct.amrr_softc** %4, align 8
  %10 = load %struct.amrr_softc*, %struct.amrr_softc** %4, align 8
  %11 = icmp eq %struct.amrr_softc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.ath_ratectrl* null, %struct.ath_ratectrl** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.amrr_softc*, %struct.amrr_softc** %4, align 8
  %15 = getelementptr inbounds %struct.amrr_softc, %struct.amrr_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.ath_ratectrl, %struct.ath_ratectrl* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = call i32 @ath_rate_sysctlattach(%struct.ath_softc* %17)
  %19 = load %struct.amrr_softc*, %struct.amrr_softc** %4, align 8
  %20 = getelementptr inbounds %struct.amrr_softc, %struct.amrr_softc* %19, i32 0, i32 0
  store %struct.ath_ratectrl* %20, %struct.ath_ratectrl** %2, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load %struct.ath_ratectrl*, %struct.ath_ratectrl** %2, align 8
  ret %struct.ath_ratectrl* %22
}

declare dso_local %struct.amrr_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @ath_rate_sysctlattach(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
