; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_sym_hash_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_sym_hash_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sym_hash_fn.first_time = internal global i32 1, align 4
@sym_hash_fn.byte_cache = internal global [256 x [4 x i32]] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sym_hash_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_hash_fn(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = bitcast i32* %5 to i64*
  store i64* %14, i64** %10, align 8
  %15 = bitcast i32* %6 to i64*
  store i64* %15, i64** %11, align 8
  %16 = bitcast i32* %7 to i64*
  store i64* %16, i64** %12, align 8
  %17 = bitcast i32* %8 to i64*
  store i64* %17, i64** %13, align 8
  %18 = load i32, i32* @sym_hash_fn.first_time, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @build_byte_cache(i32** bitcast ([256 x [4 x i32]]* @sym_hash_fn.byte_cache to i32**))
  store i32 0, i32* @sym_hash_fn.first_time, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i64*, i64** %10, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 3
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %25
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = load i64*, i64** %10, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %31
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %28, %34
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %38
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %35, %41
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %42, %48
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %52
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = xor i32 %49, %55
  %57 = load i64*, i64** %11, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %59
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %56, %62
  %64 = load i64*, i64** %11, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %66
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %63, %69
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %73
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %70, %76
  %78 = load i64*, i64** %12, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %80
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %81, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = xor i32 %77, %83
  %85 = load i64*, i64** %12, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %87
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %88, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %84, %90
  %92 = load i64*, i64** %13, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %91, %97
  %99 = load i64*, i64** %13, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @sym_hash_fn.byte_cache, i64 0, i64 %101
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %102, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %98, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @build_byte_cache(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
