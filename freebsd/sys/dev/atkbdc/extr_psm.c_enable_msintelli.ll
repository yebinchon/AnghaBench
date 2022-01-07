; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_msintelli.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_msintelli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@enable_msintelli.rate = internal global [3 x i32] [i32 200, i32 100, i32 80], align 4
@FALSE = common dso_local global i32 0, align 4
@PSM_INTELLI_ID = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_msintelli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_msintelli(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @nitems(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @enable_msintelli.rate, i64 0, i64 0))
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msintelli.rate, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_mouse_sampling_rate(i32 %17, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msintelli.rate, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @get_aux_id(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PSM_INTELLI_ID, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PROBE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 3, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %52 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %40, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i32 @get_aux_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
