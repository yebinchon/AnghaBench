; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namecache = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.namecache*, i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@KTR_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cache_zap(%p) vp %p\00", align 1
@nc_hash = common dso_local global i32 0, align 4
@vfs = common dso_local global i32 0, align 4
@namecache = common dso_local global i32 0, align 4
@zap = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@nc_dst = common dso_local global i32 0, align 4
@zap_negative = common dso_local global i32 0, align 4
@NCF_ISDOTDOT = common dso_local global i32 0, align 4
@nc_src = common dso_local global i32 0, align 4
@NCF_DVDROP = common dso_local global i32 0, align 4
@numcachehv = common dso_local global i32 0, align 4
@numcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*, i32)* @cache_zap_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_zap_locked(%struct.namecache* %0, i32 %1) #0 {
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca i32, align 4
  store %struct.namecache* %0, %struct.namecache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.namecache*, %struct.namecache** %3, align 8
  %6 = getelementptr inbounds %struct.namecache, %struct.namecache* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NCF_NEGATIVE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.namecache*, %struct.namecache** %3, align 8
  %13 = getelementptr inbounds %struct.namecache, %struct.namecache* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @cache_assert_vnode_locked(%struct.TYPE_6__* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.namecache*, %struct.namecache** %3, align 8
  %18 = getelementptr inbounds %struct.namecache, %struct.namecache* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @cache_assert_vnode_locked(%struct.TYPE_6__* %19)
  %21 = load %struct.namecache*, %struct.namecache** %3, align 8
  %22 = load i32, i32* @RA_WLOCKED, align 4
  %23 = call i32 @cache_assert_bucket_locked(%struct.namecache* %21, i32 %22)
  %24 = load i32, i32* @KTR_VFS, align 4
  %25 = load %struct.namecache*, %struct.namecache** %3, align 8
  %26 = load %struct.namecache*, %struct.namecache** %3, align 8
  %27 = getelementptr inbounds %struct.namecache, %struct.namecache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NCF_NEGATIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.namecache*, %struct.namecache** %3, align 8
  %35 = getelementptr inbounds %struct.namecache, %struct.namecache* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi %struct.TYPE_6__* [ null, %32 ], [ %36, %33 ]
  %39 = call i32 @CTR2(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.namecache* %25, %struct.TYPE_6__* %38)
  %40 = load %struct.namecache*, %struct.namecache** %3, align 8
  %41 = load i32, i32* @nc_hash, align 4
  %42 = call i32 @LIST_REMOVE(%struct.namecache* %40, i32 %41)
  %43 = load %struct.namecache*, %struct.namecache** %3, align 8
  %44 = getelementptr inbounds %struct.namecache, %struct.namecache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NCF_NEGATIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @vfs, align 4
  %51 = load i32, i32* @namecache, align 4
  %52 = load i32, i32* @zap, align 4
  %53 = load i32, i32* @done, align 4
  %54 = load %struct.namecache*, %struct.namecache** %3, align 8
  %55 = getelementptr inbounds %struct.namecache, %struct.namecache* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.namecache*, %struct.namecache** %3, align 8
  %58 = getelementptr inbounds %struct.namecache, %struct.namecache* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.namecache*, %struct.namecache** %3, align 8
  %61 = getelementptr inbounds %struct.namecache, %struct.namecache* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @SDT_PROBE3(i32 %50, i32 %51, i32 %52, i32 %53, %struct.TYPE_6__* %56, i32 %59, %struct.TYPE_6__* %62)
  %64 = load %struct.namecache*, %struct.namecache** %3, align 8
  %65 = getelementptr inbounds %struct.namecache, %struct.namecache* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load %struct.namecache*, %struct.namecache** %3, align 8
  %69 = load i32, i32* @nc_dst, align 4
  %70 = call i32 @TAILQ_REMOVE(i32* %67, %struct.namecache* %68, i32 %69)
  %71 = load %struct.namecache*, %struct.namecache** %3, align 8
  %72 = load %struct.namecache*, %struct.namecache** %3, align 8
  %73 = getelementptr inbounds %struct.namecache, %struct.namecache* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.namecache*, %struct.namecache** %75, align 8
  %77 = icmp eq %struct.namecache* %71, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %49
  %79 = load %struct.namecache*, %struct.namecache** %3, align 8
  %80 = getelementptr inbounds %struct.namecache, %struct.namecache* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store %struct.namecache* null, %struct.namecache** %82, align 8
  br label %83

83:                                               ; preds = %78, %49
  br label %99

84:                                               ; preds = %37
  %85 = load i32, i32* @vfs, align 4
  %86 = load i32, i32* @namecache, align 4
  %87 = load i32, i32* @zap_negative, align 4
  %88 = load i32, i32* @done, align 4
  %89 = load %struct.namecache*, %struct.namecache** %3, align 8
  %90 = getelementptr inbounds %struct.namecache, %struct.namecache* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.namecache*, %struct.namecache** %3, align 8
  %93 = getelementptr inbounds %struct.namecache, %struct.namecache* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @SDT_PROBE2(i32 %85, i32 %86, i32 %87, i32 %88, %struct.TYPE_6__* %91, i32 %94)
  %96 = load %struct.namecache*, %struct.namecache** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @cache_negative_remove(%struct.namecache* %96, i32 %97)
  br label %99

99:                                               ; preds = %84, %83
  %100 = load %struct.namecache*, %struct.namecache** %3, align 8
  %101 = getelementptr inbounds %struct.namecache, %struct.namecache* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NCF_ISDOTDOT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load %struct.namecache*, %struct.namecache** %3, align 8
  %108 = load %struct.namecache*, %struct.namecache** %3, align 8
  %109 = getelementptr inbounds %struct.namecache, %struct.namecache* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.namecache*, %struct.namecache** %111, align 8
  %113 = icmp eq %struct.namecache* %107, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.namecache*, %struct.namecache** %3, align 8
  %116 = getelementptr inbounds %struct.namecache, %struct.namecache* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store %struct.namecache* null, %struct.namecache** %118, align 8
  br label %119

119:                                              ; preds = %114, %106
  br label %138

120:                                              ; preds = %99
  %121 = load %struct.namecache*, %struct.namecache** %3, align 8
  %122 = load i32, i32* @nc_src, align 4
  %123 = call i32 @LIST_REMOVE(%struct.namecache* %121, i32 %122)
  %124 = load %struct.namecache*, %struct.namecache** %3, align 8
  %125 = getelementptr inbounds %struct.namecache, %struct.namecache* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i64 @LIST_EMPTY(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load i32, i32* @NCF_DVDROP, align 4
  %132 = load %struct.namecache*, %struct.namecache** %3, align 8
  %133 = getelementptr inbounds %struct.namecache, %struct.namecache* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = call i32 @atomic_subtract_rel_long(i32* @numcachehv, i32 1)
  br label %137

137:                                              ; preds = %130, %120
  br label %138

138:                                              ; preds = %137, %119
  %139 = call i32 @atomic_subtract_rel_long(i32* @numcache, i32 1)
  ret void
}

declare dso_local i32 @cache_assert_vnode_locked(%struct.TYPE_6__*) #1

declare dso_local i32 @cache_assert_bucket_locked(%struct.namecache*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.namecache*, %struct.TYPE_6__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.namecache*, i32) #1

declare dso_local i32 @SDT_PROBE3(i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @SDT_PROBE2(i32, i32, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cache_negative_remove(%struct.namecache*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @atomic_subtract_rel_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
