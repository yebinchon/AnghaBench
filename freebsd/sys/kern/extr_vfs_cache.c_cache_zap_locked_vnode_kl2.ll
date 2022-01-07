; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_locked_vnode_kl2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_locked_vnode_kl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namecache = type { i32, %struct.vnode*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.mtx = type { i32 }
%struct.rwlock = type { i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namecache*, %struct.vnode*, %struct.mtx**)* @cache_zap_locked_vnode_kl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_zap_locked_vnode_kl2(%struct.namecache* %0, %struct.vnode* %1, %struct.mtx** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namecache*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.mtx**, align 8
  %8 = alloca %struct.mtx*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca %struct.mtx*, align 8
  %11 = alloca %struct.mtx*, align 8
  %12 = alloca %struct.rwlock*, align 8
  store %struct.namecache* %0, %struct.namecache** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.mtx** %2, %struct.mtx*** %7, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = load %struct.namecache*, %struct.namecache** %5, align 8
  %15 = getelementptr inbounds %struct.namecache, %struct.namecache* %14, i32 0, i32 2
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  %17 = icmp eq %struct.vnode* %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load %struct.namecache*, %struct.namecache** %5, align 8
  %21 = getelementptr inbounds %struct.namecache, %struct.namecache* %20, i32 0, i32 1
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  %23 = icmp eq %struct.vnode* %19, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ true, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call i32 @cache_assert_vnode_locked(%struct.vnode* %28)
  %30 = load %struct.namecache*, %struct.namecache** %5, align 8
  %31 = getelementptr inbounds %struct.namecache, %struct.namecache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NCF_NEGATIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %38 = load %struct.mtx*, %struct.mtx** %37, align 8
  %39 = icmp ne %struct.mtx* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %42 = load %struct.mtx*, %struct.mtx** %41, align 8
  %43 = call i32 @mtx_unlock(%struct.mtx* %42)
  %44 = load %struct.mtx**, %struct.mtx*** %7, align 8
  store %struct.mtx* null, %struct.mtx** %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.namecache*, %struct.namecache** %5, align 8
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = call i32 @cache_zap_negative_locked_vnode_kl(%struct.namecache* %46, %struct.vnode* %47)
  store i32 1, i32* %4, align 4
  br label %128

49:                                               ; preds = %24
  %50 = load %struct.vnode*, %struct.vnode** %6, align 8
  %51 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %50)
  store %struct.mtx* %51, %struct.mtx** %8, align 8
  %52 = load %struct.namecache*, %struct.namecache** %5, align 8
  %53 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %52)
  store %struct.rwlock* %53, %struct.rwlock** %12, align 8
  %54 = load %struct.namecache*, %struct.namecache** %5, align 8
  %55 = getelementptr inbounds %struct.namecache, %struct.namecache* %54, i32 0, i32 2
  %56 = load %struct.vnode*, %struct.vnode** %55, align 8
  %57 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %56)
  store %struct.mtx* %57, %struct.mtx** %9, align 8
  %58 = load %struct.namecache*, %struct.namecache** %5, align 8
  %59 = getelementptr inbounds %struct.namecache, %struct.namecache* %58, i32 0, i32 1
  %60 = load %struct.vnode*, %struct.vnode** %59, align 8
  %61 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %60)
  store %struct.mtx* %61, %struct.mtx** %10, align 8
  %62 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %63 = load %struct.mtx*, %struct.mtx** %62, align 8
  %64 = load %struct.mtx*, %struct.mtx** %9, align 8
  %65 = icmp eq %struct.mtx* %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %49
  %67 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %68 = load %struct.mtx*, %struct.mtx** %67, align 8
  %69 = load %struct.mtx*, %struct.mtx** %10, align 8
  %70 = icmp eq %struct.mtx* %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %49
  %72 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %73 = load %struct.mtx*, %struct.mtx** %72, align 8
  store %struct.mtx* %73, %struct.mtx** %11, align 8
  %74 = load %struct.mtx**, %struct.mtx*** %7, align 8
  store %struct.mtx* null, %struct.mtx** %74, align 8
  br label %101

75:                                               ; preds = %66
  %76 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %77 = load %struct.mtx*, %struct.mtx** %76, align 8
  %78 = icmp ne %struct.mtx* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %81 = load %struct.mtx*, %struct.mtx** %80, align 8
  %82 = call i32 @mtx_unlock(%struct.mtx* %81)
  %83 = load %struct.mtx**, %struct.mtx*** %7, align 8
  store %struct.mtx* null, %struct.mtx** %83, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = call i32 @cache_sort_vnodes(%struct.mtx** %9, %struct.mtx** %10)
  %86 = load %struct.mtx*, %struct.mtx** %9, align 8
  %87 = load %struct.mtx*, %struct.mtx** %8, align 8
  %88 = icmp eq %struct.mtx* %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.mtx*, %struct.mtx** %10, align 8
  %91 = call i32 @mtx_lock(%struct.mtx* %90)
  %92 = load %struct.mtx*, %struct.mtx** %10, align 8
  store %struct.mtx* %92, %struct.mtx** %11, align 8
  br label %100

93:                                               ; preds = %84
  %94 = load %struct.mtx*, %struct.mtx** %9, align 8
  %95 = call i32 @mtx_trylock(%struct.mtx* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %114

98:                                               ; preds = %93
  %99 = load %struct.mtx*, %struct.mtx** %9, align 8
  store %struct.mtx* %99, %struct.mtx** %11, align 8
  br label %100

100:                                              ; preds = %98, %89
  br label %101

101:                                              ; preds = %100, %71
  %102 = load %struct.rwlock*, %struct.rwlock** %12, align 8
  %103 = call i32 @rw_wlock(%struct.rwlock* %102)
  %104 = load %struct.namecache*, %struct.namecache** %5, align 8
  %105 = call i32 @cache_zap_locked(%struct.namecache* %104, i32 0)
  %106 = load %struct.rwlock*, %struct.rwlock** %12, align 8
  %107 = call i32 @rw_wunlock(%struct.rwlock* %106)
  %108 = load %struct.mtx*, %struct.mtx** %11, align 8
  %109 = icmp ne %struct.mtx* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.mtx*, %struct.mtx** %11, align 8
  %112 = call i32 @mtx_unlock(%struct.mtx* %111)
  br label %113

113:                                              ; preds = %110, %101
  store i32 1, i32* %4, align 4
  br label %128

114:                                              ; preds = %97
  %115 = load %struct.mtx*, %struct.mtx** %10, align 8
  %116 = call i32 @mtx_unlock(%struct.mtx* %115)
  %117 = load %struct.mtx*, %struct.mtx** %9, align 8
  %118 = call i32 @mtx_lock(%struct.mtx* %117)
  %119 = load %struct.mtx*, %struct.mtx** %10, align 8
  %120 = call i32 @mtx_lock(%struct.mtx* %119)
  %121 = load %struct.mtx**, %struct.mtx*** %7, align 8
  %122 = load %struct.mtx*, %struct.mtx** %121, align 8
  %123 = icmp eq %struct.mtx* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @MPASS(i32 %124)
  %126 = load %struct.mtx*, %struct.mtx** %9, align 8
  %127 = load %struct.mtx**, %struct.mtx*** %7, align 8
  store %struct.mtx* %126, %struct.mtx** %127, align 8
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %114, %113, %45
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @cache_assert_vnode_locked(%struct.vnode*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @cache_zap_negative_locked_vnode_kl(%struct.namecache*, %struct.vnode*) #1

declare dso_local %struct.mtx* @VP2VNODELOCK(%struct.vnode*) #1

declare dso_local %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache*) #1

declare dso_local i32 @cache_sort_vnodes(%struct.mtx**, %struct.mtx**) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @mtx_trylock(%struct.mtx*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local i32 @cache_zap_locked(%struct.namecache*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
