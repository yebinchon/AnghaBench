; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_itimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_itimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.timespec = type { i32 }
%struct.tmpfs_node = type { i32, %struct.timespec, %struct.timespec, %struct.timespec }

@.str = private unnamed_addr constant [13 x i8] c"tmpfs_itimes\00", align 1
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@RANDOM_FS_ATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_itimes(%struct.vnode* %0, %struct.timespec* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.tmpfs_node*, align 8
  %8 = alloca %struct.timespec, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %11)
  store %struct.tmpfs_node* %12, %struct.tmpfs_node** %7, align 8
  %13 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %14 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %17 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %89

24:                                               ; preds = %3
  %25 = call i32 @vfs_timestamp(%struct.timespec* %8)
  %26 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %27 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %26)
  %28 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %29 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.timespec*, %struct.timespec** %5, align 8
  %36 = icmp eq %struct.timespec* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.timespec* %8, %struct.timespec** %5, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %40 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %39, i32 0, i32 3
  %41 = load %struct.timespec*, %struct.timespec** %5, align 8
  %42 = bitcast %struct.timespec* %40 to i8*
  %43 = bitcast %struct.timespec* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %46 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.timespec*, %struct.timespec** %6, align 8
  %53 = icmp eq %struct.timespec* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store %struct.timespec* %8, %struct.timespec** %6, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %57 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %56, i32 0, i32 2
  %58 = load %struct.timespec*, %struct.timespec** %6, align 8
  %59 = bitcast %struct.timespec* %57 to i8*
  %60 = bitcast %struct.timespec* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %63 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %70 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %69, i32 0, i32 1
  %71 = bitcast %struct.timespec* %70 to i8*
  %72 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %75 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %81 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %85 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %84)
  %86 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %87 = load i32, i32* @RANDOM_FS_ATIME, align 4
  %88 = call i32 @random_harvest_queue(%struct.tmpfs_node* %86, i32 16, i32 %87)
  br label %89

89:                                               ; preds = %73, %23
  ret void
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @random_harvest_queue(%struct.tmpfs_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
