; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_allocate_syncvnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_allocate_syncvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.vnode* }
%struct.vnode = type { %struct.bufobj, i32, i32 }
%struct.bufobj = type { i32 }

@vfs_allocate_syncvnode.start = internal global i64 0, align 8
@vfs_allocate_syncvnode.incr = internal global i64 0, align 8
@vfs_allocate_syncvnode.next = internal global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"syncer\00", align 1
@sync_vnodeops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vfs_allocate_syncvnode: getnewvnode() failed\00", align 1
@VNON = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VV_FORCEINSMQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"vfs_allocate_syncvnode: insmntque() failed\00", align 1
@syncer_maxdelay = common dso_local global i64 0, align 8
@syncdelay = common dso_local global i64 0, align 8
@sync_mtx = common dso_local global i32 0, align 4
@sync_vnode_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_allocate_syncvnode(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %6 = load %struct.mount*, %struct.mount** %2, align 8
  %7 = call i32 @getnewvnode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.mount* %6, i32* @sync_vnodeops, %struct.vnode** %3)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @VNON, align 4
  %14 = load %struct.vnode*, %struct.vnode** %3, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = load i32, i32* @LK_EXCLUSIVE, align 4
  %18 = load i32, i32* @LK_RETRY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @vn_lock(%struct.vnode* %16, i32 %19)
  %21 = load i32, i32* @VV_FORCEINSMQ, align 4
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = load %struct.mount*, %struct.mount** %2, align 8
  %28 = call i32 @insmntque(%struct.vnode* %26, %struct.mount* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %12
  %32 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i32, i32* @VV_FORCEINSMQ, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.vnode*, %struct.vnode** %3, align 8
  %41 = call i32 @VOP_UNLOCK(%struct.vnode* %40, i32 0)
  %42 = load i64, i64* @vfs_allocate_syncvnode.incr, align 8
  %43 = load i64, i64* @vfs_allocate_syncvnode.next, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* @vfs_allocate_syncvnode.next, align 8
  %45 = load i64, i64* @vfs_allocate_syncvnode.next, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = load i64, i64* @vfs_allocate_syncvnode.next, align 8
  %49 = load i64, i64* @syncer_maxdelay, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %33
  %52 = load i64, i64* @vfs_allocate_syncvnode.start, align 8
  %53 = sdiv i64 %52, 2
  store i64 %53, i64* @vfs_allocate_syncvnode.start, align 8
  %54 = load i64, i64* @vfs_allocate_syncvnode.incr, align 8
  %55 = sdiv i64 %54, 2
  store i64 %55, i64* @vfs_allocate_syncvnode.incr, align 8
  %56 = load i64, i64* @vfs_allocate_syncvnode.start, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i64, i64* @syncer_maxdelay, align 8
  %60 = sdiv i64 %59, 2
  store i64 %60, i64* @vfs_allocate_syncvnode.start, align 8
  %61 = load i64, i64* @syncer_maxdelay, align 8
  store i64 %61, i64* @vfs_allocate_syncvnode.incr, align 8
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i64, i64* @vfs_allocate_syncvnode.start, align 8
  store i64 %63, i64* @vfs_allocate_syncvnode.next, align 8
  br label %64

64:                                               ; preds = %62, %47
  %65 = load %struct.vnode*, %struct.vnode** %3, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 0
  store %struct.bufobj* %66, %struct.bufobj** %4, align 8
  %67 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %68 = call i32 @BO_LOCK(%struct.bufobj* %67)
  %69 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %70 = load i64, i64* @syncdelay, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i64, i64* @vfs_allocate_syncvnode.next, align 8
  %74 = load i64, i64* @syncdelay, align 8
  %75 = srem i64 %73, %74
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i64 [ %75, %72 ], [ 0, %76 ]
  %79 = call i32 @vn_syncer_add_to_worklist(%struct.bufobj* %69, i64 %78)
  %80 = call i32 @mtx_lock(i32* @sync_mtx)
  %81 = load i32, i32* @sync_vnode_count, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @sync_vnode_count, align 4
  %83 = load %struct.mount*, %struct.mount** %2, align 8
  %84 = getelementptr inbounds %struct.mount, %struct.mount* %83, i32 0, i32 0
  %85 = load %struct.vnode*, %struct.vnode** %84, align 8
  %86 = icmp eq %struct.vnode* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.vnode*, %struct.vnode** %3, align 8
  %89 = load %struct.mount*, %struct.mount** %2, align 8
  %90 = getelementptr inbounds %struct.mount, %struct.mount* %89, i32 0, i32 0
  store %struct.vnode* %88, %struct.vnode** %90, align 8
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %91

91:                                               ; preds = %87, %77
  %92 = call i32 @mtx_unlock(i32* @sync_mtx)
  %93 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %94 = call i32 @BO_UNLOCK(%struct.bufobj* %93)
  %95 = load %struct.vnode*, %struct.vnode** %3, align 8
  %96 = icmp ne %struct.vnode* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.vnode*, %struct.vnode** %3, align 8
  %99 = load i32, i32* @LK_EXCLUSIVE, align 4
  %100 = load i32, i32* @LK_RETRY, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @vn_lock(%struct.vnode* %98, i32 %101)
  %103 = load %struct.vnode*, %struct.vnode** %3, align 8
  %104 = call i32 @vgone(%struct.vnode* %103)
  %105 = load %struct.vnode*, %struct.vnode** %3, align 8
  %106 = call i32 @vput(%struct.vnode* %105)
  br label %107

107:                                              ; preds = %97, %91
  ret void
}

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @vn_syncer_add_to_worklist(%struct.bufobj*, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
