; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_build_sym_key_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_build_sym_key_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_sym_key_cache.key = internal constant [2 x i32] [i32 80, i32 109], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @build_sym_key_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sym_key_cache(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @build_sym_key_cache.key, i64 0, i64 0), align 4
  %11 = shl i32 %10, 24
  %12 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @build_sym_key_cache.key, i64 0, i64 1), align 4
  %13 = shl i32 %12, 16
  %14 = or i32 %11, %13
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @build_sym_key_cache.key, i64 0, i64 0), align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @build_sym_key_cache.key, i64 0, i64 1), align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  store i32 32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %48, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = srem i32 %25, 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 8
  %34 = and i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* @build_sym_key_cache.key, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %37, %38
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %20

53:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
