; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_range_decoder = type { i32 }
%struct.lz_len_model = type { i32, i32*, i32, i32*, i32 }

@LOW_BITS = common dso_local global i32 0, align 4
@LOW_SYMBOLS = common dso_local global i32 0, align 4
@MID_BITS = common dso_local global i32 0, align 4
@MID_SYMBOLS = common dso_local global i32 0, align 4
@HIGH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_range_decoder*, %struct.lz_len_model*, i32)* @lz_rd_decode_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_rd_decode_len(%struct.lz_range_decoder* %0, %struct.lz_len_model* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lz_range_decoder*, align 8
  %6 = alloca %struct.lz_len_model*, align 8
  %7 = alloca i32, align 4
  store %struct.lz_range_decoder* %0, %struct.lz_range_decoder** %5, align 8
  store %struct.lz_len_model* %1, %struct.lz_len_model** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %5, align 8
  %9 = load %struct.lz_len_model*, %struct.lz_len_model** %6, align 8
  %10 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %9, i32 0, i32 4
  %11 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %8, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %5, align 8
  %15 = load %struct.lz_len_model*, %struct.lz_len_model** %6, align 8
  %16 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LOW_BITS, align 4
  %23 = call i32 @lz_rd_decode_tree(%struct.lz_range_decoder* %14, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %5, align 8
  %26 = load %struct.lz_len_model*, %struct.lz_len_model** %6, align 8
  %27 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %26, i32 0, i32 2
  %28 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %25, i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i32, i32* @LOW_SYMBOLS, align 4
  %32 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %5, align 8
  %33 = load %struct.lz_len_model*, %struct.lz_len_model** %6, align 8
  %34 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MID_BITS, align 4
  %41 = call i32 @lz_rd_decode_tree(%struct.lz_range_decoder* %32, i32 %39, i32 %40)
  %42 = add nsw i32 %31, %41
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %24
  %44 = load i32, i32* @LOW_SYMBOLS, align 4
  %45 = load i32, i32* @MID_SYMBOLS, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %5, align 8
  %48 = load %struct.lz_len_model*, %struct.lz_len_model** %6, align 8
  %49 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HIGH_BITS, align 4
  %52 = call i32 @lz_rd_decode_tree(%struct.lz_range_decoder* %47, i32 %50, i32 %51)
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %43, %30, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @lz_rd_decode_bit(%struct.lz_range_decoder*, i32*) #1

declare dso_local i32 @lz_rd_decode_tree(%struct.lz_range_decoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
