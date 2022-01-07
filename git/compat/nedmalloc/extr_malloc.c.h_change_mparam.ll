; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_change_mparam.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_change_mparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@MAX_SIZE_T = common dso_local global i64 0, align 8
@mparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @change_mparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_mparam(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @MAX_SIZE_T, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i64 [ %10, %9 ], [ %13, %11 ]
  store i64 %15, i64* %6, align 8
  %16 = call i32 (...) @ensure_initialization()
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %35 [
    i32 128, label %18
    i32 130, label %20
    i32 129, label %33
  ]

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mparams, i32 0, i32 0), align 8
  store i32 1, i32* %3, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mparams, i32 0, i32 1), align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 1
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mparams, i32 0, i32 2), align 8
  store i32 1, i32* %3, align 4
  br label %36

32:                                               ; preds = %24, %20
  store i32 0, i32* %3, align 4
  br label %36

33:                                               ; preds = %14
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mparams, i32 0, i32 3), align 8
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %32, %30, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ensure_initialization(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
