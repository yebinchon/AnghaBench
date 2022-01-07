; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_chi_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_chi_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rndtest_state = type { i32* }

@RNDTEST_CHI4_K = common dso_local global i32 0, align 4
@RNDTEST_NBYTES = common dso_local global i32 0, align 4
@RNDTEST_CHI4_K_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chi^2(4): pass (sum %u)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"chi^2(4): failed (sum %u)\00", align 1
@rndstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndtest_state*)* @rndtest_chi_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndtest_chi_4(%struct.rndtest_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rndtest_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rndtest_state* %0, %struct.rndtest_state** %3, align 8
  %9 = load i32, i32* @RNDTEST_CHI4_K, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RNDTEST_CHI4_K, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %12, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %13

24:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RNDTEST_NBYTES, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %31 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = load i32, i32* @RNDTEST_CHI4_K_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %12, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %45 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 0
  %52 = load i32, i32* @RNDTEST_CHI4_K_MASK, align 4
  %53 = and i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %12, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %25

61:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @RNDTEST_CHI4_K, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %12, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %12, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %70, %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %7, align 4
  %83 = icmp uge i32 %82, 1563181
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp ule i32 %85, 1576929
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @rndtest_report(%struct.rndtest_state* %88, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %97

91:                                               ; preds = %84, %81
  %92 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @rndtest_report(%struct.rndtest_state* %92, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rndtest_report(%struct.rndtest_state*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
