; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_sort_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_sort_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"no channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @sort_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_channels(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %51, %3
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = icmp uge i64 %22, 1
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %9, align 8
  br label %26

26:                                               ; preds = %45, %24
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ugt i32* %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @chancompar(i32* %35, i32* %36)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %50

40:                                               ; preds = %30
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @swap(i32* %41, i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = sub i64 0, %46
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %9, align 8
  br label %26

50:                                               ; preds = %39, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %8, align 8
  br label %20

55:                                               ; preds = %20
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @chancompar(i32*, i32*) #1

declare dso_local i32 @swap(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
