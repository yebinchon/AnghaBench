; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_sane_tz_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_sane_tz_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c" +0500\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @sane_tz_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sane_tz_len(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %2
  store i64 0, i64* %3, align 8
  br label %67

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 43
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %67

40:                                               ; preds = %33, %21
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %56, %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = icmp ne i8* %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isdigit(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i64 0, i64* %3, align 8
  br label %67

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %43

59:                                               ; preds = %43
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8*, i8** %6, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %59, %54, %39, %20
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
