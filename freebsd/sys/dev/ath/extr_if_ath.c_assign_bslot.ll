; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_assign_bslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_assign_bslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32** }

@ATH_BCBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @assign_bslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_bslot(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ATH_BCBUF, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %10
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  %24 = load i64, i64* @ATH_BCBUF, align 8
  %25 = urem i64 %23, %24
  %26 = getelementptr inbounds i32*, i32** %21, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %33, 1
  %35 = load i64, i64* @ATH_BCBUF, align 8
  %36 = urem i64 %34, %35
  %37 = getelementptr inbounds i32*, i32** %32, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %29, %18
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %10
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %6

49:                                               ; preds = %6
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
