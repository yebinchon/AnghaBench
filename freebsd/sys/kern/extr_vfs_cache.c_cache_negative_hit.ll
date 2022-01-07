; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_hit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.namecache = type { i32 }
%struct.neglist = type { i32, i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@NCF_HOTNEGATIVE = common dso_local global i32 0, align 4
@ncneg_hot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@numhotneg = common dso_local global i32 0, align 4
@nc_dst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*)* @cache_negative_hit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_negative_hit(%struct.namecache* %0) #0 {
  %2 = alloca %struct.namecache*, align 8
  %3 = alloca %struct.neglist*, align 8
  store %struct.namecache* %0, %struct.namecache** %2, align 8
  %4 = load %struct.namecache*, %struct.namecache** %2, align 8
  %5 = getelementptr inbounds %struct.namecache, %struct.namecache* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NCF_NEGATIVE, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.namecache*, %struct.namecache** %2, align 8
  %11 = getelementptr inbounds %struct.namecache, %struct.namecache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.namecache*, %struct.namecache** %2, align 8
  %19 = call %struct.neglist* @NCP2NEGLIST(%struct.namecache* %18)
  store %struct.neglist* %19, %struct.neglist** %3, align 8
  %20 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  %21 = load %struct.neglist*, %struct.neglist** %3, align 8
  %22 = getelementptr inbounds %struct.neglist, %struct.neglist* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load %struct.namecache*, %struct.namecache** %2, align 8
  %25 = getelementptr inbounds %struct.namecache, %struct.namecache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @numhotneg, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @numhotneg, align 4
  %33 = load %struct.neglist*, %struct.neglist** %3, align 8
  %34 = getelementptr inbounds %struct.neglist, %struct.neglist* %33, i32 0, i32 1
  %35 = load %struct.namecache*, %struct.namecache** %2, align 8
  %36 = load i32, i32* @nc_dst, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.namecache* %35, i32 %36)
  %38 = load %struct.namecache*, %struct.namecache** %2, align 8
  %39 = load i32, i32* @nc_dst, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 1), %struct.namecache* %38, i32 %39)
  %41 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %42 = load %struct.namecache*, %struct.namecache** %2, align 8
  %43 = getelementptr inbounds %struct.namecache, %struct.namecache* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %30, %17
  %47 = load %struct.neglist*, %struct.neglist** %3, align 8
  %48 = getelementptr inbounds %struct.neglist, %struct.neglist* %47, i32 0, i32 0
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  br label %51

51:                                               ; preds = %46, %16
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.neglist* @NCP2NEGLIST(%struct.namecache*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
