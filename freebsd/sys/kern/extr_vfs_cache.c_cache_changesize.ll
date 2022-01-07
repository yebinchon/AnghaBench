; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_changesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_changesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nchashhead = type { i32 }
%struct.namecache = type { i32, i32, i32 }

@ncsizefactor = common dso_local global i32 0, align 4
@numbucketlocks = common dso_local global i32 0, align 4
@M_VFSCACHE = common dso_local global i32 0, align 4
@nchash = common dso_local global i64 0, align 8
@nchashtbl = common dso_local global %struct.nchashhead* null, align 8
@nc_hash = common dso_local global i32 0, align 4
@ncsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_changesize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nchashhead*, align 8
  %4 = alloca %struct.nchashhead*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.namecache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ncsizefactor, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 2
  %16 = call i32 @cache_roundup_2(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @numbucketlocks, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @numbucketlocks, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @M_VFSCACHE, align 4
  %25 = call %struct.nchashhead* @hashinit(i32 %23, i32 %24, i64* %5)
  store %struct.nchashhead* %25, %struct.nchashhead** %3, align 8
  %26 = load i64, i64* @nchash, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.nchashhead*, %struct.nchashhead** %3, align 8
  %31 = load i32, i32* @M_VFSCACHE, align 4
  %32 = call i32 @free(%struct.nchashhead* %30, i32 %31)
  br label %83

33:                                               ; preds = %22
  %34 = call i32 (...) @cache_lock_all_vnodes()
  %35 = call i32 (...) @cache_lock_all_buckets()
  %36 = load %struct.nchashhead*, %struct.nchashhead** @nchashtbl, align 8
  store %struct.nchashhead* %36, %struct.nchashhead** %4, align 8
  %37 = load i64, i64* @nchash, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.nchashhead*, %struct.nchashhead** %3, align 8
  store %struct.nchashhead* %38, %struct.nchashhead** @nchashtbl, align 8
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* @nchash, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %73, %33
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %53, %45
  %47 = load %struct.nchashhead*, %struct.nchashhead** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %47, i64 %49
  %51 = call %struct.namecache* @LIST_FIRST(%struct.nchashhead* %50)
  store %struct.namecache* %51, %struct.namecache** %7, align 8
  %52 = icmp ne %struct.namecache* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load %struct.namecache*, %struct.namecache** %7, align 8
  %55 = getelementptr inbounds %struct.namecache, %struct.namecache* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.namecache*, %struct.namecache** %7, align 8
  %58 = getelementptr inbounds %struct.namecache, %struct.namecache* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.namecache*, %struct.namecache** %7, align 8
  %61 = getelementptr inbounds %struct.namecache, %struct.namecache* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cache_get_hash(i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.namecache*, %struct.namecache** %7, align 8
  %65 = load i32, i32* @nc_hash, align 4
  %66 = call i32 @LIST_REMOVE(%struct.namecache* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @NCHHASH(i32 %67)
  %69 = load %struct.namecache*, %struct.namecache** %7, align 8
  %70 = load i32, i32* @nc_hash, align 4
  %71 = call i32 @LIST_INSERT_HEAD(i32 %68, %struct.namecache* %69, i32 %70)
  br label %46

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %40

76:                                               ; preds = %40
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* @ncsize, align 4
  %78 = call i32 (...) @cache_unlock_all_buckets()
  %79 = call i32 (...) @cache_unlock_all_vnodes()
  %80 = load %struct.nchashhead*, %struct.nchashhead** %4, align 8
  %81 = load i32, i32* @M_VFSCACHE, align 4
  %82 = call i32 @free(%struct.nchashhead* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %29
  ret void
}

declare dso_local i32 @cache_roundup_2(i32) #1

declare dso_local %struct.nchashhead* @hashinit(i32, i32, i64*) #1

declare dso_local i32 @free(%struct.nchashhead*, i32) #1

declare dso_local i32 @cache_lock_all_vnodes(...) #1

declare dso_local i32 @cache_lock_all_buckets(...) #1

declare dso_local %struct.namecache* @LIST_FIRST(%struct.nchashhead*) #1

declare dso_local i32 @cache_get_hash(i32, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.namecache*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.namecache*, i32) #1

declare dso_local i32 @NCHHASH(i32) #1

declare dso_local i32 @cache_unlock_all_buckets(...) #1

declare dso_local i32 @cache_unlock_all_vnodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
