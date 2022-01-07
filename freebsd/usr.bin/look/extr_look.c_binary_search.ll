; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_binary_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GREATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @binary_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @binary_search(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @SKIP_PAST_NEWLINE(i8* %16, i8* %17)
  br label %19

19:                                               ; preds = %40, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ugt i8* %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %52

29:                                               ; preds = %27
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @compare(i32* %30, i8* %31, i8* %32)
  %34 = load i64, i64* @GREATER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %5, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv i64 %46, 2
  %48 = getelementptr inbounds i8, i8* %41, i64 %47
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @SKIP_PAST_NEWLINE(i8* %49, i8* %50)
  br label %19

52:                                               ; preds = %27
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32 @SKIP_PAST_NEWLINE(i8*, i8*) #1

declare dso_local i64 @compare(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
