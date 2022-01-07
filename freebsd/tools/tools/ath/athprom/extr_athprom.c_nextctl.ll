; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_nextctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_nextctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@eeprom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@curmode = common dso_local global i32 0, align 4
@headerInfo11A = common dso_local global i32 0, align 4
@headerInfo11B = common dso_local global i32 0, align 4
@headerInfo11G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nextctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 0), align 8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 1), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i1 [ false, %6 ], [ %16, %10 ]
  br i1 %18, label %19, label %49

19:                                               ; preds = %17
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 1), align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  switch i32 %25, label %44 [
    i32 0, label %26
    i32 3, label %26
    i32 1, label %32
    i32 2, label %38
  ]

26:                                               ; preds = %19, %19
  %27 = load i32, i32* @curmode, align 4
  %28 = load i32, i32* @headerInfo11A, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %46

31:                                               ; preds = %26
  br label %44

32:                                               ; preds = %19
  %33 = load i32, i32* @curmode, align 4
  %34 = load i32, i32* @headerInfo11B, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %46

37:                                               ; preds = %32
  br label %44

38:                                               ; preds = %19
  %39 = load i32, i32* @curmode, align 4
  %40 = load i32, i32* @headerInfo11G, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %19, %43, %37, %31
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %42, %36, %30
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %6

49:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
