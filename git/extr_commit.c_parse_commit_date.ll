; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_parse_commit_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_parse_commit_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_commit_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_commit_date(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 6
  %9 = load i8*, i8** %5, align 8
  %10 = icmp uge i8* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @memcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %84

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i1 [ false, %18 ], [ %27, %22 ]
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %18

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 9
  %34 = load i8*, i8** %5, align 8
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %84

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @memcmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %84

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 62
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %43

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %84

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %75, %61
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 10
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i1 [ false, %63 ], [ %72, %67 ]
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  br label %63

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp uge i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @parse_timestamp(i8* %82, i32* null, i32 10)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %80, %60, %41, %36, %16, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_timestamp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
