; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_crc32_be.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_crc32_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHER_CRC_POLY_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_crc32_be(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %41, %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = xor i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ETHER_CRC_POLY_BE, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %10

50:                                               ; preds = %10
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
