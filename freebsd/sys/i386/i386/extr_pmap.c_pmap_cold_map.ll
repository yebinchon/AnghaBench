; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_cold_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_cold_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPTphys = common dso_local global i64 0, align 8
@PG_V = common dso_local global i64 0, align 8
@PG_RW = common dso_local global i64 0, align 8
@PG_A = common dso_local global i64 0, align 8
@PG_M = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @pmap_cold_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_cold_map(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @KPTphys, align 8
  %9 = inttoptr i64 %8 to i64*
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @atop(i64 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  store i64* %13, i64** %7, align 8
  br label %14

14:                                               ; preds = %28, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PG_V, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @PG_RW, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @PG_A, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @PG_M, align 8
  %26 = or i64 %24, %25
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %7, align 8
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %4, align 8
  br label %14

39:                                               ; preds = %14
  ret void
}

declare dso_local i32 @atop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
