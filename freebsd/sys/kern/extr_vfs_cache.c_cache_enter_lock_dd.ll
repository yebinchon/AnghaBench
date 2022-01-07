; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_enter_lock_dd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_enter_lock_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { i32** }
%struct.vnode = type { %struct.namecache* }
%struct.namecache = type { i32, i32, %struct.vnode* }
%struct.rwlock = type { i32 }

@NCF_ISDOTDOT = common dso_local global i32 0, align 4
@NCF_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.celockstate*, %struct.vnode*, %struct.vnode*, i32)* @cache_enter_lock_dd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_enter_lock_dd(%struct.celockstate* %0, %struct.vnode* %1, %struct.vnode* %2, i32 %3) #0 {
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

14:                                               ; preds = %91, %4
  %15 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  store %struct.rwlock* null, %struct.rwlock** %15, align 8
  %16 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call i32 @cache_lock_vnodes_cel(%struct.celockstate* %16, %struct.vnode* %17, %struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.namecache*, %struct.namecache** %21, align 8
  store %struct.namecache* %22, %struct.namecache** %9, align 8
  %23 = load %struct.namecache*, %struct.namecache** %9, align 8
  %24 = icmp eq %struct.namecache* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %106

26:                                               ; preds = %14
  %27 = load %struct.namecache*, %struct.namecache** %9, align 8
  %28 = getelementptr inbounds %struct.namecache, %struct.namecache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NCF_ISDOTDOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %106

34:                                               ; preds = %26
  %35 = load %struct.namecache*, %struct.namecache** %9, align 8
  %36 = getelementptr inbounds %struct.namecache, %struct.namecache* %35, i32 0, i32 2
  %37 = load %struct.vnode*, %struct.vnode** %36, align 8
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = icmp eq %struct.vnode* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @MPASS(i32 %40)
  %42 = load %struct.namecache*, %struct.namecache** %9, align 8
  %43 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %42)
  %44 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  store %struct.rwlock* %43, %struct.rwlock** %44, align 8
  %45 = load %struct.namecache*, %struct.namecache** %9, align 8
  %46 = getelementptr inbounds %struct.namecache, %struct.namecache* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NCF_NEGATIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %106

52:                                               ; preds = %34
  %53 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %54 = load %struct.namecache*, %struct.namecache** %9, align 8
  %55 = getelementptr inbounds %struct.namecache, %struct.namecache* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @cache_lock_vnodes_cel_3(%struct.celockstate* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %106

60:                                               ; preds = %52
  %61 = load %struct.namecache*, %struct.namecache** %9, align 8
  %62 = load %struct.vnode*, %struct.vnode** %6, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  %64 = load %struct.namecache*, %struct.namecache** %63, align 8
  %65 = icmp eq %struct.namecache* %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load %struct.namecache*, %struct.namecache** %9, align 8
  %68 = getelementptr inbounds %struct.namecache, %struct.namecache* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NCF_ISDOTDOT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  %75 = load %struct.rwlock*, %struct.rwlock** %74, align 8
  %76 = load %struct.namecache*, %struct.namecache** %9, align 8
  %77 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %76)
  %78 = icmp eq %struct.rwlock* %75, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.namecache*, %struct.namecache** %9, align 8
  %81 = getelementptr inbounds %struct.namecache, %struct.namecache* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32* @VP2VNODELOCK(i32 %82)
  %84 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %85 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %106

91:                                               ; preds = %79, %73, %66, %60
  %92 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %93 = call i32 @cache_unlock_vnodes_cel(%struct.celockstate* %92)
  %94 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %95 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  store i32* null, i32** %97, align 8
  %98 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %99 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  store i32* null, i32** %101, align 8
  %102 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %103 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 2
  store i32* null, i32** %105, align 8
  br label %14

106:                                              ; preds = %90, %59, %51, %33, %25
  %107 = load %struct.celockstate*, %struct.celockstate** %5, align 8
  %108 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 0
  %109 = load %struct.rwlock*, %struct.rwlock** %108, align 16
  %110 = getelementptr inbounds [2 x %struct.rwlock*], [2 x %struct.rwlock*]* %10, i64 0, i64 1
  %111 = load %struct.rwlock*, %struct.rwlock** %110, align 8
  %112 = call i32 @cache_lock_buckets_cel(%struct.celockstate* %107, %struct.rwlock* %109, %struct.rwlock* %111)
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
