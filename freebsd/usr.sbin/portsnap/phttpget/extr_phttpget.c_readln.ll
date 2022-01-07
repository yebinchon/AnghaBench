; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_readln.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_readln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32*)* @readln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readln(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %83, %4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  %22 = call i32* @strnstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %84

24:                                               ; preds = %11
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %36, %38
  %40 = call i32 @memmove(i8* %29, i8* %34, i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %28, %24
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BUFSIZ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %85

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i32, i32* @BUFSIZ, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = call i32 @recv(i32 %54, i8* %59, i32 %63, i32 0)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EINTR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %53
  store i32 -1, i32* %5, align 4
  br label %85

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %75
  br label %11

84:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %74, %52
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32* @strnstr(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
