; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_longruns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_longruns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rndtest_state = type { i32* }

@RNDTEST_NBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"longruns pass (%d ones, %d zeros)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"longruns fail (%d ones, %d zeros)\00", align 1
@rndstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndtest_state*)* @rndtest_longruns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndtest_longruns(%struct.rndtest_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rndtest_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rndtest_state* %0, %struct.rndtest_state** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RNDTEST_NBYTES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %17 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %49, %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %30
  br label %48

39:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %23

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 26
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 26
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rndtest_report(%struct.rndtest_state* %65, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %61, %58
  %70 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rndtest_report(%struct.rndtest_state* %70, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  store i32 -1, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @rndtest_report(%struct.rndtest_state*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
