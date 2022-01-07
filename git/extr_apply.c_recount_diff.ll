; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_recount_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_recount_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fragment = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"recount: ignore empty hunk\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"@@ \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"diff \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"recount: unexpected line: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.fragment*)* @recount_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recount_diff(i8* %0, i32 %1, %struct.fragment* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fragment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fragment* %2, %struct.fragment** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %87

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %43, %40, %37, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @linelen(i8* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %80

30:                                               ; preds = %16
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %66 [
    i32 32, label %34
    i32 10, label %34
    i32 45, label %37
    i32 43, label %40
    i32 92, label %43
    i32 64, label %44
    i32 100, label %55
  ]

34:                                               ; preds = %30, %30
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %34
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %16

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %16

43:                                               ; preds = %30
  br label %16

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @starts_with(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ true, %44 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %67

55:                                               ; preds = %30
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @starts_with(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ true, %55 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %9, align 4
  br label %67

66:                                               ; preds = %30
  store i32 -1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %63, %52
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @linelen(i8* %74, i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 (i8*, ...) @warning(i8* %73, i32 %76, i8* %77)
  br label %87

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.fragment*, %struct.fragment** %6, align 8
  %83 = getelementptr inbounds %struct.fragment, %struct.fragment* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.fragment*, %struct.fragment** %6, align 8
  %86 = getelementptr inbounds %struct.fragment, %struct.fragment* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %70, %13
  ret void
}

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @linelen(i8*, i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
