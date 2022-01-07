; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_get_random_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_get_random_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_random_bytes(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = call i32 (...) @arc4random()
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = icmp ugt i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i64 [ 4, %17 ], [ %19, %18 ]
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ugt i64 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ 4, %25 ], [ %27, %26 ]
  %30 = trunc i64 %29 to i32
  %31 = call i32 @bcopy(i32* %6, i32* %22, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32* %33, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
