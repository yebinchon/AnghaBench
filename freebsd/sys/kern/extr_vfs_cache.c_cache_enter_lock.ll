; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_enter_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_enter_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { i32** }
%struct.vnode = type { i64, %struct.namecache* }
%struct.namecache = type { i32, i32, %struct.vnode* }
%struct.rwlock = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@NCF_ISDOTDOT = common dso_local global i32 0, align 4
@NCF_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.celockstate*, %struct.vnode*, %struct.vnode*, i32)* @cache_enter_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_enter_lock(%struct.celockstate* %0, %struct.vnode* %1, %struct.vnode* %2, i32 %3) #0 {
  %5 = alloca %struct.celockstate*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.namecache*, align 8
  %10 = alloca [2 x %struct.rwlock*], align 16
  store %struct.celockstate* %0, %struct.celockstate** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnode* %2, %struct.vnode** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.rwlock* @HASH2BUCKETLOCK(i32 %11)
  %13 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 0
  store %struct.rwlock* %12, %struct.rwlock** %13, align 16
  br label %14

14:                                               ; preds = %101, %4
  %15 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  store %struct.rwlock* null, %struct.rwlock** %15, align 8
  %16 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call i32 @cache_lock_vnodes_cel(%struct.celockstate* %16, %struct.vnode* %17, %struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = icmp eq %struct.vnode* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VDIR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %14
  br label %116

29:                                               ; preds = %22
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 1
  %32 = load %struct.namecache*, %struct.namecache** %31, align 8
  store %struct.namecache* %32, %struct.namecache** %9, align 8
  %33 = load %struct.namecache*, %struct.namecache** %9, align 8
  %34 = icmp eq %struct.namecache* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %116

36:                                               ; preds = %29
  %37 = load %struct.namecache*, %struct.namecache** %9, align 8
  %38 = getelementptr inbounds %struct.namecache, %struct.namecache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NCF_ISDOTDOT, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %116

44:                                               ; preds = %36
  %45 = load %struct.namecache*, %struct.namecache** %9, align 8
  %46 = getelementptr inbounds %struct.namecache, %struct.namecache* %45, i32 0, i32 2
  %47 = load %struct.vnode*, %struct.vnode** %46, align 8
  %48 = load %struct.vnode*, %struct.vnode** %7, align 8
  %49 = icmp eq %struct.vnode* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @MPASS(i32 %50)
  %52 = load %struct.namecache*, %struct.namecache** %9, align 8
  %53 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %52)
  %54 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  store %struct.rwlock* %53, %struct.rwlock** %54, align 8
  %55 = load %struct.namecache*, %struct.namecache** %9, align 8
  %56 = getelementptr inbounds %struct.namecache, %struct.namecache* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NCF_NEGATIVE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %116

62:                                               ; preds = %44
  %63 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %64 = load %struct.namecache*, %struct.namecache** %9, align 8
  %65 = getelementptr inbounds %struct.namecache, %struct.namecache* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @cache_lock_vnodes_cel_3(%struct.celockstate* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %116

70:                                               ; preds = %62
  %71 = load %struct.namecache*, %struct.namecache** %9, align 8
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 1
  %74 = load %struct.namecache*, %struct.namecache** %73, align 8
  %75 = icmp eq %struct.namecache* %71, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load %struct.namecache*, %struct.namecache** %9, align 8
  %78 = getelementptr inbounds %struct.namecache, %struct.namecache* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NCF_ISDOTDOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %76
  %84 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  %85 = load %struct.rwlock*, %struct.rwlock** %84, align 8
  %86 = load %struct.namecache*, %struct.namecache** %9, align 8
  %87 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %86)
  %88 = icmp eq %struct.rwlock* %85, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.namecache*, %struct.namecache** %9, align 8
  %91 = getelementptr inbounds %struct.namecache, %struct.namecache* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32* @VP2VNODELOCK(i32 %92)
  %94 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %95 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %116

101:                                              ; preds = %89, %83, %76, %70
  %102 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %103 = call i32 @cache_unlock_vnodes_cel(%struct.celockstate* %102)
  %104 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %105 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  store i32* null, i32** %107, align 8
  %108 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %109 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %113 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 2
  store i32* null, i32** %115, align 8
  br label %14

116:                                              ; preds = %100, %69, %61, %43, %35, %28
  %117 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %118 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 0
  %119 = load %struct.rwlock*, %struct.rwlock** %118, align 16
  %120 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  %121 = load %struct.rwlock*, %struct.rwlock** %120, align 8
  %122 = call i32 @cache_lock_buckets_cel(%struct.celockstate* %117, %struct.rwlock* %119, %struct.rwlock* %121)
  ret void
}

declare dso_local %struct.rwlock* @HASH2BUCKETLOCK(i32) #1

declare dso_local i32 @cache_lock_vnodes_cel(%struct.celockstate*, %struct.vnode*, %struct.vnode*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache*) #1

declare dso_local i64 @cache_lock_vnodes_cel_3(%struct.celockstate*, i32) #1

declare dso_local i32* @VP2VNODELOCK(i32) #1

declare dso_local i32 @cache_unlock_vnodes_cel(%struct.celockstate*) #1

declare dso_local i32 @cache_lock_buckets_cel(%struct.celockstate*, %struct.rwlock*, %struct.rwlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
