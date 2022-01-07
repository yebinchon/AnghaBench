; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_read_yes_no_answer.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_read_yes_no_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_yes_no_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_yes_no_answer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %7 = load i32, i32* @stdin, align 4
  %8 = call i64 @fgets(i8* %6, i32 1024, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %0
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i64, i64* %3, align 8
  %14 = icmp uge i64 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = sub i64 %16, 2
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = sub i64 %23, 2
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %24
  store i8 0, i8* %25, align 1
  store i32 1, i32* %4, align 4
  br label %41

26:                                               ; preds = %15, %10
  %27 = load i64, i64* %3, align 8
  %28 = icmp uge i64 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* %3, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29, %26
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %54, %44
  %46 = call i32 (...) @getchar()
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @EOF, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 10
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %45

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %41
  br label %58

57:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %91

58:                                               ; preds = %56
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = call signext i8 @tolower(i8 signext %60)
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 121
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 1, i32* %1, align 4
  br label %91

69:                                               ; preds = %64, %58
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %71 = call i32 @strncasecmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1024)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 1, i32* %1, align 4
  br label %91

74:                                               ; preds = %69
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = call signext i8 @tolower(i8 signext %76)
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 110
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %1, align 4
  br label %91

85:                                               ; preds = %80, %74
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %87 = call i32 @strncasecmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 1024)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %1, align 4
  br label %91

90:                                               ; preds = %85
  store i32 -1, i32* %1, align 4
  br label %91

91:                                               ; preds = %90, %89, %84, %73, %68, %57
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
