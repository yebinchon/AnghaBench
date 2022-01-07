; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_cl_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_cl_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@in_count = common dso_local global i32 0, align 4
@CHECK_GAP = common dso_local global i64 0, align 8
@checkpoint = common dso_local global i64 0, align 8
@bytes_out = common dso_local global i32 0, align 4
@ratio = common dso_local global i64 0, align 8
@hsize = common dso_local global i64 0, align 8
@FIRST = common dso_local global i32 0, align 4
@free_ent = common dso_local global i32 0, align 4
@clear_flg = common dso_local global i32 0, align 4
@CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_zstate*)* @cl_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_block(%struct.s_zstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_zstate*, align 8
  %4 = alloca i64, align 8
  store %struct.s_zstate* %0, %struct.s_zstate** %3, align 8
  %5 = load i32, i32* @in_count, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @CHECK_GAP, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* @checkpoint, align 8
  %9 = load i32, i32* @in_count, align 4
  %10 = icmp sgt i32 %9, 8388607
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @bytes_out, align 4
  %13 = ashr i32 %12, 8
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i64 2147483647, i64* %4, align 8
  br label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @in_count, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = sdiv i64 %20, %21
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %18, %17
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @in_count, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* @bytes_out, align 4
  %28 = sdiv i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @ratio, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* @ratio, align 8
  br label %49

36:                                               ; preds = %30
  store i64 0, i64* @ratio, align 8
  %37 = load %struct.s_zstate*, %struct.s_zstate** %3, align 8
  %38 = load i64, i64* @hsize, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @cl_hash(%struct.s_zstate* %37, i32 %39)
  %41 = load i32, i32* @FIRST, align 4
  store i32 %41, i32* @free_ent, align 4
  store i32 1, i32* @clear_flg, align 4
  %42 = load %struct.s_zstate*, %struct.s_zstate** %3, align 8
  %43 = load i64, i64* @CLEAR, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @output(%struct.s_zstate* %42, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %50

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %34
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @cl_hash(%struct.s_zstate*, i32) #1

declare dso_local i32 @output(%struct.s_zstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
