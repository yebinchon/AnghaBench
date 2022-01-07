; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_rev_in_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_rev_in_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@revision = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rev_in_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_in_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32*, i32** @revision, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32*, i32** @revision, align 8
  %11 = call i64 @strlen(i32* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32*, i32** @revision, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @strnEQ(i8* %12, i32* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isspace(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %57

25:                                               ; preds = %17, %9
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %53, %25
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i32*, i32** @revision, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @strnEQ(i8* %38, i32* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isspace(i8 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %57

52:                                               ; preds = %43, %36, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %27

56:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %51, %24, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strnEQ(i8*, i32*, i64) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
