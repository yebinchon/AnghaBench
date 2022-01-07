; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_skipto.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_skipto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXID = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@bol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c".directive\00", align 1
@lineno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"EOF with no matching .%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @skipto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipto(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @MAXID, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  br label %14

14:                                               ; preds = %60, %39, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %62

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @bol, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @MAXID, align 4
  %30 = call i32 @token(i32* %28, i8* %13, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %62

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcasecmp(i8* %13, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %61

39:                                               ; preds = %34
  br label %14

40:                                               ; preds = %24, %21
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @getc(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EOF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %62

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 10
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @bol, align 4
  %55 = load i32, i32* @bol, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @lineno, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @lineno, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %14

61:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

62:                                               ; preds = %49, %33, %20
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @EOF, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @token(i32*, i8*, i32, i8*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
