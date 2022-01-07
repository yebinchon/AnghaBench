; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_atkbdc_get_softc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_atkbdc_get_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atkbdc_softc = common dso_local global i32** null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @atkbdc_get_softc(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32**, i32*** @atkbdc_softc, align 8
  %7 = call i32 @nitems(i32** %6)
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load i32**, i32*** @atkbdc_softc, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i32* @malloc(i32 4, i32 %19, i32 %22)
  %24 = load i32**, i32*** @atkbdc_softc, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* %23, i32** %27, align 8
  store i32* %23, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32* null, i32** %2, align 8
  br label %34

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32*, i32** %4, align 8
  store i32* %33, i32** %2, align 8
  br label %34

34:                                               ; preds = %32, %30, %9
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32 @nitems(i32**) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
