; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.namecache = type { i32 }
%struct.neglist = type { i32, i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@NCF_HOTNEGATIVE = common dso_local global i32 0, align 4
@ncneg_hot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@nc_dst = common dso_local global i32 0, align 4
@numhotneg = common dso_local global i32 0, align 4
@numneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*, i32)* @cache_negative_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_negative_remove(%struct.namecache* %0, i32 %1) #0 {
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.neglist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.namecache* %0, %struct.namecache** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.namecache*, %struct.namecache** %3, align 8
  %9 = getelementptr inbounds %struct.namecache, %struct.namecache* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NCF_NEGATIVE, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.namecache*, %struct.namecache** %3, align 8
  %15 = load i32, i32* @RA_WLOCKED, align 4
  %16 = call i32 @cache_assert_bucket_locked(%struct.namecache* %14, i32 %15)
  %17 = load %struct.namecache*, %struct.namecache** %3, align 8
  %18 = call %struct.neglist* @NCP2NEGLIST(%struct.namecache* %17)
  store %struct.neglist* %18, %struct.neglist** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %2
  %22 = load %struct.namecache*, %struct.namecache** %3, align 8
  %23 = getelementptr inbounds %struct.namecache, %struct.namecache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  %29 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  %30 = load %struct.namecache*, %struct.namecache** %3, align 8
  %31 = getelementptr inbounds %struct.namecache, %struct.namecache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  %37 = load %struct.neglist*, %struct.neglist** %5, align 8
  %38 = getelementptr inbounds %struct.neglist, %struct.neglist* %37, i32 0, i32 0
  %39 = call i32 @mtx_lock(i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  br label %45

41:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  %42 = load %struct.neglist*, %struct.neglist** %5, align 8
  %43 = getelementptr inbounds %struct.neglist, %struct.neglist* %42, i32 0, i32 0
  %44 = call i32 @mtx_lock(i32* %43)
  br label %45

45:                                               ; preds = %41, %40
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.namecache*, %struct.namecache** %3, align 8
  %48 = getelementptr inbounds %struct.namecache, %struct.namecache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* @MA_OWNED, align 4
  %55 = call i32 @mtx_assert(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0), i32 %54)
  %56 = load %struct.namecache*, %struct.namecache** %3, align 8
  %57 = load i32, i32* @nc_dst, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 1), %struct.namecache* %56, i32 %57)
  %59 = load i32, i32* @numhotneg, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @numhotneg, align 4
  br label %71

61:                                               ; preds = %46
  %62 = load %struct.neglist*, %struct.neglist** %5, align 8
  %63 = getelementptr inbounds %struct.neglist, %struct.neglist* %62, i32 0, i32 0
  %64 = load i32, i32* @MA_OWNED, align 4
  %65 = call i32 @mtx_assert(i32* %63, i32 %64)
  %66 = load %struct.neglist*, %struct.neglist** %5, align 8
  %67 = getelementptr inbounds %struct.neglist, %struct.neglist* %66, i32 0, i32 1
  %68 = load %struct.namecache*, %struct.namecache** %3, align 8
  %69 = load i32, i32* @nc_dst, align 4
  %70 = call i32 @TAILQ_REMOVE(i32* %67, %struct.namecache* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %53
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.neglist*, %struct.neglist** %5, align 8
  %76 = getelementptr inbounds %struct.neglist, %struct.neglist* %75, i32 0, i32 0
  %77 = call i32 @mtx_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = call i32 @atomic_subtract_rel_long(i32* @numneg, i32 1)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @cache_assert_bucket_locked(%struct.namecache*, i32) #1

declare dso_local %struct.neglist* @NCP2NEGLIST(%struct.namecache*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_subtract_rel_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
