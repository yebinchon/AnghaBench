; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namecache = type { i32 }
%struct.neglist = type { i32, i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@nc_dst = common dso_local global i32 0, align 4
@numneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*, i32)* @cache_negative_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_negative_insert(%struct.namecache* %0, i32 %1) #0 {
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.neglist*, align 8
  store %struct.namecache* %0, %struct.namecache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.namecache*, %struct.namecache** %3, align 8
  %7 = getelementptr inbounds %struct.namecache, %struct.namecache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NCF_NEGATIVE, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @MPASS(i32 %10)
  %12 = load %struct.namecache*, %struct.namecache** %3, align 8
  %13 = load i32, i32* @RA_WLOCKED, align 4
  %14 = call i32 @cache_assert_bucket_locked(%struct.namecache* %12, i32 %13)
  %15 = load %struct.namecache*, %struct.namecache** %3, align 8
  %16 = call %struct.neglist* @NCP2NEGLIST(%struct.namecache* %15)
  store %struct.neglist* %16, %struct.neglist** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.neglist*, %struct.neglist** %5, align 8
  %21 = getelementptr inbounds %struct.neglist, %struct.neglist* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.neglist*, %struct.neglist** %5, align 8
  %25 = getelementptr inbounds %struct.neglist, %struct.neglist* %24, i32 0, i32 0
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @mtx_assert(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.neglist*, %struct.neglist** %5, align 8
  %30 = getelementptr inbounds %struct.neglist, %struct.neglist* %29, i32 0, i32 1
  %31 = load %struct.namecache*, %struct.namecache** %3, align 8
  %32 = load i32, i32* @nc_dst, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.namecache* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.neglist*, %struct.neglist** %5, align 8
  %38 = getelementptr inbounds %struct.neglist, %struct.neglist* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = call i32 @atomic_add_rel_long(i32* @numneg, i32 1)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @cache_assert_bucket_locked(%struct.namecache*, i32) #1

declare dso_local %struct.neglist* @NCP2NEGLIST(%struct.namecache*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_add_rel_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
