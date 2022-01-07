; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/file2c/extr_file2c.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/file2c/extr_file2c.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"n:sx\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 10, i32* %11, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %25 [
    i32 110, label %19
    i32 115, label %22
    i32 120, label %23
    i32 63, label %24
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @strtol(i32 %20, i32* null, i32 10)
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %27

23:                                               ; preds = %17
  store i32 16, i32* %11, align 4
  br label %27

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %17, %24
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %23, %22, %19
  br label %12

28:                                               ; preds = %12
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %28
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %100, %44
  %46 = call i32 (...) @getchar()
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @EOF, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = call i32 @putchar(i8 signext 44)
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 70
  br i1 %61, label %69, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %59
  %70 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %65, %62
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = call i32 @putchar(i8 signext 32)
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %85

81:                                               ; preds = %74
  %82 = call i32 @putchar(i8 signext 9)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 8
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %98 [
    i32 10, label %88
    i32 16, label %93
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %100

98:                                               ; preds = %86
  %99 = call i32 (...) @abort() #3
  unreachable

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %45

103:                                              ; preds = %45
  %104 = call i32 @putchar(i8 signext 10)
  %105 = load i32, i32* %4, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %107, %103
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
