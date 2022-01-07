; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_matched.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_matched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_range_decoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_range_decoder*, i32*, i32)* @lz_rd_decode_matched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_rd_decode_matched(%struct.lz_range_decoder* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lz_range_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lz_range_decoder* %0, %struct.lz_range_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 7, i32* %8, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 8
  %24 = add i32 %21, %23
  %25 = add i32 %24, 256
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = call i32 @lz_rd_decode_bit(%struct.lz_range_decoder* %19, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %40, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %38, 256
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  %43 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @lz_rd_decode_bit(%struct.lz_range_decoder* %43, i32* %47)
  %49 = or i32 %42, %48
  store i32 %49, i32* %7, align 4
  br label %37

50:                                               ; preds = %37
  br label %55

51:                                               ; preds = %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %11

55:                                               ; preds = %50, %11
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 255
  ret i32 %57
}

declare dso_local i32 @lz_rd_decode_bit(%struct.lz_range_decoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
