; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namecache = type { i32 }
%struct.namecache_ts = type { %struct.namecache }

@CACHE_PATH_CUTOFF = common dso_local global i32 0, align 4
@cache_zone_small_ts = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@cache_zone_large_ts = common dso_local global i32 0, align 4
@cache_zone_small = common dso_local global i32 0, align 4
@cache_zone_large = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.namecache* (i32, i32)* @cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.namecache* @cache_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.namecache_ts*, align 8
  %6 = alloca %struct.namecache*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @__predict_false(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CACHE_PATH_CUTOFF, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @cache_zone_small_ts, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i8* @uma_zalloc(i32 %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.namecache_ts*
  store %struct.namecache_ts* %18, %struct.namecache_ts** %5, align 8
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* @cache_zone_large_ts, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @uma_zalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.namecache_ts*
  store %struct.namecache_ts* %23, %struct.namecache_ts** %5, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.namecache_ts*, %struct.namecache_ts** %5, align 8
  %26 = getelementptr inbounds %struct.namecache_ts, %struct.namecache_ts* %25, i32 0, i32 0
  store %struct.namecache* %26, %struct.namecache** %6, align 8
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CACHE_PATH_CUTOFF, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @cache_zone_small, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i8* @uma_zalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.namecache*
  store %struct.namecache* %35, %struct.namecache** %6, align 8
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @cache_zone_large, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i8* @uma_zalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.namecache*
  store %struct.namecache* %40, %struct.namecache** %6, align 8
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.namecache*, %struct.namecache** %6, align 8
  ret %struct.namecache* %43
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i8* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
