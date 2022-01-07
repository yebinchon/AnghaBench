; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_free_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsops = type { i32 }
%struct.vnode = type { i32, i64, %struct.mount*, i32* }
%struct.mount = type { %struct.vfsops* }

@vnode_free_list_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@max_vnlru_free = common dso_local global i32 0, align 4
@vnode_free_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vnlru_free: vnode already reclaimed.\00", align 1
@VI_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Removing vnode not on freelist\00", align 1
@VI_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Mangling active vnode\00", align 1
@v_actfreelist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"vp inconsistent on freelist\00", align 1
@freevnodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vfsops*)* @vnlru_free_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnlru_free_locked(i32 %0, %struct.vfsops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsops*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.vfsops* %1, %struct.vfsops** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* @vnode_free_list_mtx, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @max_vnlru_free, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @max_vnlru_free, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %2
  br label %16

16:                                               ; preds = %117, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %16
  %20 = call %struct.vnode* @TAILQ_FIRST(i32* @vnode_free_list)
  store %struct.vnode* %20, %struct.vnode** %5, align 8
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = icmp eq %struct.vnode* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %120

27:                                               ; preds = %23
  %28 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  %29 = load %struct.vfsops*, %struct.vfsops** %4, align 8
  %30 = call i32 @vnlru_return_batches(%struct.vfsops* %29)
  store i32 1, i32* %7, align 4
  %31 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  br label %117

32:                                               ; preds = %19
  %33 = load %struct.vnode*, %struct.vnode** %5, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = call i32 @VNASSERT(i32 %37, %struct.vnode* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.vnode*, %struct.vnode** %5, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VI_FREE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.vnode*, %struct.vnode** %5, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VI_ACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.vnode*, %struct.vnode** %5, align 8
  %57 = load i32, i32* @v_actfreelist, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* @vnode_free_list, %struct.vnode* %56, i32 %57)
  %59 = load %struct.vfsops*, %struct.vfsops** %4, align 8
  %60 = icmp ne %struct.vfsops* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %32
  %62 = load %struct.vnode*, %struct.vnode** %5, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 2
  %64 = load %struct.mount*, %struct.mount** %63, align 8
  store %struct.mount* %64, %struct.mount** %6, align 8
  %65 = icmp ne %struct.mount* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.mount*, %struct.mount** %6, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 0
  %69 = load %struct.vfsops*, %struct.vfsops** %68, align 8
  %70 = load %struct.vfsops*, %struct.vfsops** %4, align 8
  %71 = icmp ne %struct.vfsops* %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66, %61, %32
  %73 = load %struct.vnode*, %struct.vnode** %5, align 8
  %74 = call i32 @VI_TRYLOCK(%struct.vnode* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.vnode*, %struct.vnode** %5, align 8
  %78 = load i32, i32* @v_actfreelist, align 4
  %79 = call i32 @TAILQ_INSERT_TAIL(i32* @vnode_free_list, %struct.vnode* %77, i32 %78)
  br label %117

80:                                               ; preds = %72
  %81 = load %struct.vnode*, %struct.vnode** %5, align 8
  %82 = getelementptr inbounds %struct.vnode, %struct.vnode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VI_FREE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.vnode*, %struct.vnode** %5, align 8
  %89 = getelementptr inbounds %struct.vnode, %struct.vnode* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br label %92

92:                                               ; preds = %87, %80
  %93 = phi i1 [ false, %80 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = load %struct.vnode*, %struct.vnode** %5, align 8
  %96 = call i32 @VNASSERT(i32 %94, %struct.vnode* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @freevnodes, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @freevnodes, align 4
  %99 = load i32, i32* @VI_FREE, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.vnode*, %struct.vnode** %5, align 8
  %102 = getelementptr inbounds %struct.vnode, %struct.vnode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = call i32 (...) @VNODE_REFCOUNT_FENCE_REL()
  %106 = load %struct.vnode*, %struct.vnode** %5, align 8
  %107 = getelementptr inbounds %struct.vnode, %struct.vnode* %106, i32 0, i32 1
  %108 = call i32 @refcount_acquire(i64* %107)
  %109 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  %110 = load %struct.vnode*, %struct.vnode** %5, align 8
  %111 = call i32 @VI_UNLOCK(%struct.vnode* %110)
  %112 = load %struct.vnode*, %struct.vnode** %5, align 8
  %113 = call i32 @vtryrecycle(%struct.vnode* %112)
  %114 = load %struct.vnode*, %struct.vnode** %5, align 8
  %115 = call i32 @vdrop(%struct.vnode* %114)
  %116 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  br label %117

117:                                              ; preds = %92, %76, %27
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %3, align 4
  br label %16

120:                                              ; preds = %26, %16
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.vnode* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vnlru_return_batches(%struct.vfsops*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @VI_TRYLOCK(%struct.vnode*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @VNODE_REFCOUNT_FENCE_REL(...) #1

declare dso_local i32 @refcount_acquire(i64*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vtryrecycle(%struct.vnode*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
