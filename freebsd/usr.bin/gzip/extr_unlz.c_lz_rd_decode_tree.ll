; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_range_decoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_range_decoder*, i32*, i32)* @lz_rd_decode_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_rd_decode_tree(%struct.lz_range_decoder* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lz_range_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lz_range_decoder* %0, %struct.lz_range_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 1
  %16 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @lz_rd_decode_bit(%struct.lz_range_decoder* %16, i32* %20)
  %22 = or i32 %15, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = sub i32 %27, %29
  ret i32 %30
}

declare dso_local i32 @lz_rd_decode_bit(%struct.lz_range_decoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
