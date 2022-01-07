; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_range_decoder = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_range_decoder*, i32)* @lz_rd_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_rd_decode(%struct.lz_range_decoder* %0, i32 %1) #0 {
  %3 = alloca %struct.lz_range_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lz_range_decoder* %0, %struct.lz_range_decoder** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %11
  %26 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %11
  %36 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ule i32 %38, 16777215
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %42 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  store i32 %44, i32* %42, align 4
  %45 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @getc(i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = or i32 %48, %53
  %55 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %40, %35
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @getc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
