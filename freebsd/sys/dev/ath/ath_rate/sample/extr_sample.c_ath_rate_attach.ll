; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ratectrl = type { i32 }
%struct.ath_softc = type { i32 }
%struct.sample_softc = type { i32, i32, i32, i32, i32, i32, %struct.ath_ratectrl }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath_ratectrl* @ath_rate_attach(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_ratectrl*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.sample_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.sample_softc* @malloc(i32 28, i32 %5, i32 %8)
  store %struct.sample_softc* %9, %struct.sample_softc** %4, align 8
  %10 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %11 = icmp eq %struct.sample_softc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.ath_ratectrl* null, %struct.ath_ratectrl** %2, align 8
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %15 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ath_ratectrl, %struct.ath_ratectrl* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %18 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %17, i32 0, i32 0
  store i32 75, i32* %18, align 4
  %19 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %20 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 100, %21
  %23 = sdiv i32 100, %22
  %24 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %25 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %27 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %26, i32 0, i32 2
  store i32 10, i32* %27, align 4
  %28 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %29 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %28, i32 0, i32 3
  store i32 3, i32* %29, align 4
  %30 = load i32, i32* @hz, align 4
  %31 = mul nsw i32 10, %30
  %32 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %33 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @hz, align 4
  %35 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %36 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %39 = call i32 @ath_rate_sysctlattach(%struct.ath_softc* %37, %struct.sample_softc* %38)
  %40 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %41 = getelementptr inbounds %struct.sample_softc, %struct.sample_softc* %40, i32 0, i32 6
  store %struct.ath_ratectrl* %41, %struct.ath_ratectrl** %2, align 8
  br label %42

42:                                               ; preds = %13, %12
  %43 = load %struct.ath_ratectrl*, %struct.ath_ratectrl** %2, align 8
  ret %struct.ath_ratectrl* %43
}

declare dso_local %struct.sample_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @ath_rate_sysctlattach(%struct.ath_softc*, %struct.sample_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
