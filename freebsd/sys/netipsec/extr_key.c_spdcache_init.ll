; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"net.key.spdcache.maxentries\00", align 1
@V_key_spdcache_maxentries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"net.key.spdcache.threshold\00", align 1
@V_key_spdcache_threshold = common dso_local global i32 0, align 4
@SPDCACHE_MAX_ENTRIES_PER_HASH = common dso_local global i32 0, align 4
@M_IPSEC_SPDCACHE = common dso_local global i32 0, align 4
@V_spdcachehash_mask = common dso_local global i32 0, align 4
@V_spdcachehashtbl = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_spdcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spdcache_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* @V_key_spdcache_maxentries)
  %3 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* @V_key_spdcache_threshold)
  %4 = load i32, i32* @V_key_spdcache_maxentries, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %0
  %7 = load i32, i32* @V_key_spdcache_maxentries, align 4
  %8 = load i32, i32* @SPDCACHE_MAX_ENTRIES_PER_HASH, align 4
  %9 = call i32 @MAX(i32 %7, i32 %8)
  store i32 %9, i32* @V_key_spdcache_maxentries, align 4
  %10 = load i32, i32* @V_key_spdcache_maxentries, align 4
  %11 = load i32, i32* @SPDCACHE_MAX_ENTRIES_PER_HASH, align 4
  %12 = sdiv i32 %10, %11
  %13 = load i32, i32* @M_IPSEC_SPDCACHE, align 4
  %14 = call i32 @hashinit(i32 %12, i32 %13, i32* @V_spdcachehash_mask)
  store i32 %14, i32* @V_spdcachehashtbl, align 4
  %15 = load i32, i32* @V_spdcachehash_mask, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @SPDCACHE_MAX_ENTRIES_PER_HASH, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* @V_key_spdcache_maxentries, align 4
  %19 = load i32, i32* @V_spdcachehash_mask, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_IPSEC_SPDCACHE, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @malloc(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* @V_spdcache_lock, align 4
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %37, %6
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @V_spdcachehash_mask, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @SPDCACHE_LOCK_INIT(i32 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %29

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %0
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @SPDCACHE_LOCK_INIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
