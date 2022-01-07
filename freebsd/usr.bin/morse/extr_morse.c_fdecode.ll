; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_fdecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_fdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@WHITESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdecode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %90, %1
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = ptrtoint i8* %11 to i64
  %19 = sub i64 %17, %18
  %20 = sub nsw i64 %15, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @fgets(i8* %13, i32 %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %12
  store i8* %11, i8** %4, align 8
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isblank(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %26

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isspace(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  %57 = call i32 @putchar(i8 signext 32)
  br label %42

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @WHITESPACE, align 4
  %66 = call i8* @strpbrk(i8* %64, i32 %65)
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  store i8* %11, i8** %5, align 8
  br label %70

70:                                               ; preds = %75, %69
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8, i8* %76, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  store i8 %78, i8* %79, align 1
  br label %70

81:                                               ; preds = %70
  br label %89

82:                                               ; preds = %63
  %83 = load i8*, i8** %3, align 8
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @decode(i8* %86)
  %88 = load i8*, i8** %3, align 8
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %82, %81
  br label %59

90:                                               ; preds = %59
  br label %12

91:                                               ; preds = %12
  %92 = call i32 @putchar(i8 signext 10)
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isblank(i8 signext) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i8* @strpbrk(i8*, i32) #2

declare dso_local i32 @decode(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
