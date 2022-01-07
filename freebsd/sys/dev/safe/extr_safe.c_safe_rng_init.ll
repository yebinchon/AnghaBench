; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_rng_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i32 }

@SAFE_RNG_CTRL = common dso_local global i32 0, align 4
@SAFE_RNG_CNFG = common dso_local global i32 0, align 4
@SAFE_RNG_ALM_CNT = common dso_local global i32 0, align 4
@SAFE_RNG_OUT = common dso_local global i32 0, align 4
@SAFE_RNG_MAXWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safe_softc*)* @safe_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_rng_init(%struct.safe_softc* %0) #0 {
  %2 = alloca %struct.safe_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.safe_softc* %0, %struct.safe_softc** %2, align 8
  %6 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %7 = load i32, i32* @SAFE_RNG_CTRL, align 4
  %8 = call i32 @WRITE_REG(%struct.safe_softc* %6, i32 %7, i32 0)
  %9 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %10 = load i32, i32* @SAFE_RNG_CNFG, align 4
  %11 = call i32 @WRITE_REG(%struct.safe_softc* %9, i32 %10, i32 2100)
  %12 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %13 = load i32, i32* @SAFE_RNG_ALM_CNT, align 4
  %14 = call i32 @WRITE_REG(%struct.safe_softc* %12, i32 %13, i32 0)
  store i32 0, i32* %5, align 4
  %15 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %16 = load i32, i32* @SAFE_RNG_OUT, align 4
  %17 = call i64 @READ_REG(%struct.safe_softc* %15, i32 %16)
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %29, %1
  %19 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %20 = load i32, i32* @SAFE_RNG_OUT, align 4
  %21 = call i64 @READ_REG(%struct.safe_softc* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %3, align 8
  br label %34

27:                                               ; preds = %18
  %28 = call i32 @DELAY(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SAFE_RNG_MAXWAIT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %18, label %34

34:                                               ; preds = %29, %25
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %37 = load i32, i32* @SAFE_RNG_OUT, align 4
  %38 = call i64 @READ_REG(%struct.safe_softc* %36, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %50

43:                                               ; preds = %35
  %44 = call i32 @DELAY(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @SAFE_RNG_MAXWAIT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %35, label %50

50:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @WRITE_REG(%struct.safe_softc*, i32, i32) #1

declare dso_local i64 @READ_REG(%struct.safe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
