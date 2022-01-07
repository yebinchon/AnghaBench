; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifindex_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifindex_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_if_index = common dso_local global i64 0, align 8
@V_ifindex_table = common dso_local global i32** null, align 8
@V_if_indexlim = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**)* @ifindex_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ifindex_alloc(i8** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %5 = call i32 (...) @IFNET_WLOCK_ASSERT()
  store i64 1, i64* %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @V_if_index, align 8
  %9 = icmp ule i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32**, i32*** @V_ifindex_table, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %6

21:                                               ; preds = %16, %6
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @V_if_indexlim, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i8* (...) @if_grow()
  %27 = load i8**, i8*** %3, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* @USHRT_MAX, align 8
  store i64 %28, i64* %2, align 8
  br label %37

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @V_if_index, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* @V_if_index, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @IFNET_WLOCK_ASSERT(...) #1

declare dso_local i8* @if_grow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
