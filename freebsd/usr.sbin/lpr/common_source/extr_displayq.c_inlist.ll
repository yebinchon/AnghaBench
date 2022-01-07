; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_displayq.c_inlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_displayq.c_inlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@users = common dso_local global i64 0, align 8
@requests = common dso_local global i64 0, align 8
@user = common dso_local global i8** null, align 8
@requ = common dso_local global i32* null, align 8
@from_host = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inlist(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* @users, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @requests, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %61

16:                                               ; preds = %12, %2
  %17 = load i8**, i8*** @user, align 8
  store i8** %17, i8*** %8, align 8
  br label %18

18:                                               ; preds = %32, %16
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8**, i8*** @user, align 8
  %21 = load i64, i64* @users, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = icmp ult i8** %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %61

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i8**, i8*** %8, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %8, align 8
  br label %18

35:                                               ; preds = %18
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @calc_jobnum(i8* %36, i8** %9)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** @requ, align 8
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %57, %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** @requ, align 8
  %42 = load i64, i64* @requests, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = icmp ult i32* %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** @from_host, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %61

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  br label %39

60:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55, %30, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @calc_jobnum(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
