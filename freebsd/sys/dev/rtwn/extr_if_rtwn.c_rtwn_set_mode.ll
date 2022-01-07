; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@R92C_MSR = common dso_local global i32 0, align 4
@R92C_MSR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32, i32)* @rtwn_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_set_mode(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %8 = load i32, i32* @R92C_MSR, align 4
  %9 = load i32, i32* @R92C_MSR_MASK, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 2
  %12 = shl i32 %9, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 2
  %16 = shl i32 %13, %15
  %17 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %7, i32 %8, i32 %12, i32 %16)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %27, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
