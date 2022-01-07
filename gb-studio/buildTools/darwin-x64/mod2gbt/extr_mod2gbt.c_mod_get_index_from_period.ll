; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_mod_get_index_from_period.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_mod_get_index_from_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod_period = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0APattern %d, Step %d, Channel %d. Note too high!\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\0APattern %d, Step %d, Channel %d. Note too low!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_get_index_from_period(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** @mod_period, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 71
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** @mod_period, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %32
  br label %49

48:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %105

49:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 72
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i64*, i64** @mod_period, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %105

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %50

67:                                               ; preds = %50
  store i64 65535, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 72
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64*, i64** @mod_period, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = sub nsw i32 %73, %79
  %81 = call i32 @abs(i32 %80) #3
  store i32 %81, i32* %13, align 4
  %82 = load i64, i64* %6, align 8
  %83 = trunc i64 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %11, align 8
  %86 = sub nsw i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @abs(i32 %87) #3
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %71
  %93 = load i64*, i64** @mod_period, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %11, align 8
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %92, %71
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %68

103:                                              ; preds = %68
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %61, %48
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
