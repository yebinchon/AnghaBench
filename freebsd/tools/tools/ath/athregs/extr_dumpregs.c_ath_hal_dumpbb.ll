; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpbb.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpbb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.dumpreg**, i32 }
%struct.dumpreg = type { i32, i32 }

@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DUMP_BASEBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpbb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpbb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dumpreg*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 2), i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %72, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %15, i64 %17
  %19 = load %struct.dumpreg*, %struct.dumpreg** %18, align 8
  store %struct.dumpreg* %19, %struct.dumpreg** %9, align 8
  %20 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @match(%struct.dumpreg* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %72

25:                                               ; preds = %14
  %26 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %27 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DUMP_BASEBAND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %37 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %41 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %50 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %60

52:                                               ; preds = %39
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ath_hal_dumprange(i32* %53, i32 %54, i32 %55)
  %57 = load %struct.dumpreg*, %struct.dumpreg** %9, align 8
  %58 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %52, %48
  br label %61

61:                                               ; preds = %60, %35
  br label %71

62:                                               ; preds = %25
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ath_hal_dumprange(i32* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %61
  br label %72

72:                                               ; preds = %71, %24
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %10

75:                                               ; preds = %10
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ath_hal_dumprange(i32* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @match(%struct.dumpreg*, i32*) #1

declare dso_local i32 @ath_hal_dumprange(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
