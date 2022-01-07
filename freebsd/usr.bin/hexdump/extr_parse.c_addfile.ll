; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_addfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_addfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2049 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %65, %64, %35, %13
  %15 = getelementptr inbounds [2049 x i8], [2049 x i8]* %6, i64 0, i64 0
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @fgets(i8* %15, i32 2049, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = getelementptr inbounds [2049 x i8], [2049 x i8]* %6, i64 0, i64 0
  %21 = call i8* @strchr(i8* %20, i8 signext 10)
  store i8* %21, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %34, %23
  %26 = call i32 (...) @getchar()
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EOF, align 4
  %31 = icmp ne i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %25

35:                                               ; preds = %32
  br label %14

36:                                               ; preds = %19
  %37 = load i8*, i8** %3, align 8
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds [2049 x i8], [2049 x i8]* %6, i64 0, i64 0
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %52, %36
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isspace(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %39

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %55
  br label %14

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @add(i8* %66)
  br label %14

68:                                               ; preds = %14
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fclose(i32* %69)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @add(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
