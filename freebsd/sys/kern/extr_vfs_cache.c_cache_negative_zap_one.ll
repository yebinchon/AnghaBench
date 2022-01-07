; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_zap_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_negative_zap_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.TYPE_2__ = type { %struct.mtx, i32 }
%struct.namecache = type { i32, i32, i32 }
%struct.neglist = type { %struct.mtx, i32 }
%struct.rwlock = type { i32 }

@ncneg_shrink_lock = common dso_local global %struct.mtx zeroinitializer, align 4
@shrinking_skipped = common dso_local global i32 0, align 4
@ncneg_hot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nc_dst = common dso_local global i32 0, align 4
@NCF_HOTNEGATIVE = common dso_local global i32 0, align 4
@numhotneg = common dso_local global i32 0, align 4
@shrink_list_turn = common dso_local global i64 0, align 8
@numneglists = common dso_local global i64 0, align 8
@NCF_NEGATIVE = common dso_local global i32 0, align 4
@vfs = common dso_local global i32 0, align 4
@namecache = common dso_local global i32 0, align 4
@shrink_negative = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@numneg_evicted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_negative_zap_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_negative_zap_one() #0 {
  %1 = alloca %struct.namecache*, align 8
  %2 = alloca %struct.namecache*, align 8
  %3 = alloca %struct.neglist*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca %struct.rwlock*, align 8
  %6 = call i32* @mtx_owner(%struct.mtx* @ncneg_shrink_lock)
  %7 = icmp ne i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = call i32 @mtx_trylock(%struct.mtx* @ncneg_shrink_lock)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @shrinking_skipped, align 4
  %13 = call i32 @counter_u64_add(i32 %12, i32 1)
  br label %143

14:                                               ; preds = %8
  %15 = call i32 @mtx_lock(%struct.mtx* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  %16 = call %struct.namecache* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 1))
  store %struct.namecache* %16, %struct.namecache** %1, align 8
  %17 = load %struct.namecache*, %struct.namecache** %1, align 8
  %18 = icmp ne %struct.namecache* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.namecache*, %struct.namecache** %1, align 8
  %21 = call %struct.neglist* @NCP2NEGLIST(%struct.namecache* %20)
  store %struct.neglist* %21, %struct.neglist** %3, align 8
  %22 = load %struct.neglist*, %struct.neglist** %3, align 8
  %23 = getelementptr inbounds %struct.neglist, %struct.neglist* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(%struct.mtx* %23)
  %25 = load %struct.namecache*, %struct.namecache** %1, align 8
  %26 = load i32, i32* @nc_dst, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 1), %struct.namecache* %25, i32 %26)
  %28 = load %struct.neglist*, %struct.neglist** %3, align 8
  %29 = getelementptr inbounds %struct.neglist, %struct.neglist* %28, i32 0, i32 1
  %30 = load %struct.namecache*, %struct.namecache** %1, align 8
  %31 = load i32, i32* @nc_dst, align 4
  %32 = call i32 @TAILQ_INSERT_TAIL(i32* %29, %struct.namecache* %30, i32 %31)
  %33 = load i32, i32* @NCF_HOTNEGATIVE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.namecache*, %struct.namecache** %1, align 8
  %36 = getelementptr inbounds %struct.namecache, %struct.namecache* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @numhotneg, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @numhotneg, align 4
  %41 = load %struct.neglist*, %struct.neglist** %3, align 8
  %42 = getelementptr inbounds %struct.neglist, %struct.neglist* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(%struct.mtx* %42)
  br label %44

44:                                               ; preds = %19, %14
  %45 = call i32 @mtx_unlock(%struct.mtx* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ncneg_hot, i32 0, i32 0))
  %46 = load i64, i64* @shrink_list_turn, align 8
  %47 = call i32 @cache_negative_shrink_select(i64 %46, %struct.namecache** %1, %struct.neglist** %3)
  %48 = load i64, i64* @shrink_list_turn, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @shrink_list_turn, align 8
  %50 = load i64, i64* @shrink_list_turn, align 8
  %51 = load i64, i64* @numneglists, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i64 0, i64* @shrink_list_turn, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.namecache*, %struct.namecache** %1, align 8
  %56 = icmp eq %struct.namecache* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* @shrink_list_turn, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @shrink_list_turn, align 8
  %62 = call i32 @cache_negative_shrink_select(i64 %61, %struct.namecache** %1, %struct.neglist** %3)
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = call i32 @mtx_unlock(%struct.mtx* @ncneg_shrink_lock)
  %65 = load %struct.namecache*, %struct.namecache** %1, align 8
  %66 = icmp eq %struct.namecache* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %143

68:                                               ; preds = %63
  %69 = load %struct.namecache*, %struct.namecache** %1, align 8
  %70 = getelementptr inbounds %struct.namecache, %struct.namecache* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NCF_NEGATIVE, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @MPASS(i32 %73)
  %75 = load %struct.namecache*, %struct.namecache** %1, align 8
  %76 = getelementptr inbounds %struct.namecache, %struct.namecache* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.mtx* @VP2VNODELOCK(i32 %77)
  store %struct.mtx* %78, %struct.mtx** %4, align 8
  %79 = load %struct.namecache*, %struct.namecache** %1, align 8
  %80 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %79)
  store %struct.rwlock* %80, %struct.rwlock** %5, align 8
  %81 = load %struct.neglist*, %struct.neglist** %3, align 8
  %82 = getelementptr inbounds %struct.neglist, %struct.neglist* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(%struct.mtx* %82)
  %84 = load %struct.mtx*, %struct.mtx** %4, align 8
  %85 = call i32 @mtx_lock(%struct.mtx* %84)
  %86 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %87 = call i32 @rw_wlock(%struct.rwlock* %86)
  %88 = load %struct.neglist*, %struct.neglist** %3, align 8
  %89 = getelementptr inbounds %struct.neglist, %struct.neglist* %88, i32 0, i32 0
  %90 = call i32 @mtx_lock(%struct.mtx* %89)
  %91 = load %struct.neglist*, %struct.neglist** %3, align 8
  %92 = getelementptr inbounds %struct.neglist, %struct.neglist* %91, i32 0, i32 1
  %93 = call %struct.namecache* @TAILQ_FIRST(i32* %92)
  store %struct.namecache* %93, %struct.namecache** %2, align 8
  %94 = load %struct.namecache*, %struct.namecache** %1, align 8
  %95 = load %struct.namecache*, %struct.namecache** %2, align 8
  %96 = icmp ne %struct.namecache* %94, %95
  br i1 %96, label %116, label %97

97:                                               ; preds = %68
  %98 = load %struct.mtx*, %struct.mtx** %4, align 8
  %99 = load %struct.namecache*, %struct.namecache** %2, align 8
  %100 = getelementptr inbounds %struct.namecache, %struct.namecache* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.mtx* @VP2VNODELOCK(i32 %101)
  %103 = icmp ne %struct.mtx* %98, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %97
  %105 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %106 = load %struct.namecache*, %struct.namecache** %2, align 8
  %107 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %106)
  %108 = icmp ne %struct.rwlock* %105, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.namecache*, %struct.namecache** %2, align 8
  %111 = getelementptr inbounds %struct.namecache, %struct.namecache* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NCF_NEGATIVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %104, %97, %68
  store %struct.namecache* null, %struct.namecache** %1, align 8
  br label %133

117:                                              ; preds = %109
  %118 = load i32, i32* @vfs, align 4
  %119 = load i32, i32* @namecache, align 4
  %120 = load i32, i32* @shrink_negative, align 4
  %121 = load i32, i32* @done, align 4
  %122 = load %struct.namecache*, %struct.namecache** %1, align 8
  %123 = getelementptr inbounds %struct.namecache, %struct.namecache* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.namecache*, %struct.namecache** %1, align 8
  %126 = getelementptr inbounds %struct.namecache, %struct.namecache* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @SDT_PROBE2(i32 %118, i32 %119, i32 %120, i32 %121, i32 %124, i32 %127)
  %129 = load %struct.namecache*, %struct.namecache** %1, align 8
  %130 = call i32 @cache_zap_locked(%struct.namecache* %129, i32 1)
  %131 = load i32, i32* @numneg_evicted, align 4
  %132 = call i32 @counter_u64_add(i32 %131, i32 1)
  br label %133

133:                                              ; preds = %117, %116
  %134 = load %struct.neglist*, %struct.neglist** %3, align 8
  %135 = getelementptr inbounds %struct.neglist, %struct.neglist* %134, i32 0, i32 0
  %136 = call i32 @mtx_unlock(%struct.mtx* %135)
  %137 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %138 = call i32 @rw_wunlock(%struct.rwlock* %137)
  %139 = load %struct.mtx*, %struct.mtx** %4, align 8
  %140 = call i32 @mtx_unlock(%struct.mtx* %139)
  %141 = load %struct.namecache*, %struct.namecache** %1, align 8
  %142 = call i32 @cache_free(%struct.namecache* %141)
  br label %143

143:                                              ; preds = %133, %67, %11
  ret void
}

declare dso_local i32* @mtx_owner(%struct.mtx*) #1

declare dso_local i32 @mtx_trylock(%struct.mtx*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local %struct.namecache* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.neglist* @NCP2NEGLIST(%struct.namecache*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @cache_negative_shrink_select(i64, %struct.namecache**, %struct.neglist**) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.mtx* @VP2VNODELOCK(i32) #1

declare dso_local %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local i32 @SDT_PROBE2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_zap_locked(%struct.namecache*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @cache_free(%struct.namecache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
