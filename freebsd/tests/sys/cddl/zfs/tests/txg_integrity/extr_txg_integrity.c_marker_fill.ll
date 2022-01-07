; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_marker_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_marker_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64, i32)* @marker_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marker_fill(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1145128268, i32* %10, align 4
  store i32 1280069446, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %47, %4
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @htonl(i32 %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %15

52:                                               ; preds = %15
  ret void
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
