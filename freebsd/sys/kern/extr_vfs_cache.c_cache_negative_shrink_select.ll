; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_shrink_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_shrink_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neglist = type { i32, i32 }
%struct.namecache = type { i32 }

@numneglists = common dso_local global i32 0, align 4
@neglists = common dso_local global %struct.neglist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.namecache**, %struct.neglist**)* @cache_negative_shrink_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_negative_shrink_select(i32 %0, %struct.namecache** %1, %struct.neglist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namecache**, align 8
  %6 = alloca %struct.neglist**, align 8
  %7 = alloca %struct.neglist*, align 8
  %8 = alloca %struct.namecache*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.namecache** %1, %struct.namecache*** %5, align 8
  store %struct.neglist** %2, %struct.neglist*** %6, align 8
  store %struct.namecache* null, %struct.namecache** %8, align 8
  %10 = load %struct.namecache**, %struct.namecache*** %5, align 8
  store %struct.namecache* null, %struct.namecache** %10, align 8
  store %struct.neglist* null, %struct.neglist** %7, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @numneglists, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.neglist*, %struct.neglist** @neglists, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.neglist, %struct.neglist* %17, i64 %19
  store %struct.neglist* %20, %struct.neglist** %7, align 8
  %21 = load %struct.neglist*, %struct.neglist** %7, align 8
  %22 = getelementptr inbounds %struct.neglist, %struct.neglist* %21, i32 0, i32 1
  %23 = call %struct.namecache* @TAILQ_FIRST(i32* %22)
  %24 = icmp eq %struct.namecache* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.neglist*, %struct.neglist** %7, align 8
  %28 = getelementptr inbounds %struct.neglist, %struct.neglist* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.neglist*, %struct.neglist** %7, align 8
  %31 = getelementptr inbounds %struct.neglist, %struct.neglist* %30, i32 0, i32 1
  %32 = call %struct.namecache* @TAILQ_FIRST(i32* %31)
  store %struct.namecache* %32, %struct.namecache** %8, align 8
  %33 = load %struct.namecache*, %struct.namecache** %8, align 8
  %34 = icmp ne %struct.namecache* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.neglist*, %struct.neglist** %7, align 8
  %38 = getelementptr inbounds %struct.neglist, %struct.neglist* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %12

43:                                               ; preds = %35, %12
  %44 = load %struct.neglist*, %struct.neglist** %7, align 8
  %45 = load %struct.neglist**, %struct.neglist*** %6, align 8
  store %struct.neglist* %44, %struct.neglist** %45, align 8
  %46 = load %struct.namecache*, %struct.namecache** %8, align 8
  %47 = load %struct.namecache**, %struct.namecache*** %5, align 8
  store %struct.namecache* %46, %struct.namecache** %47, align 8
  ret void
}

declare dso_local %struct.namecache* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
