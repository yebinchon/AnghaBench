; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vstr_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vstr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64*, i64, i64)* @ldm_vstr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_vstr_get(i64* %0, i32 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = load i64, i64* %11, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %5
  store i32 -1, i32* %6, align 4
  br label %46

30:                                               ; preds = %22
  %31 = load i64*, i64** %9, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @memcpy(i64* %31, i64* %35, i64 %36)
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %30, %29
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
