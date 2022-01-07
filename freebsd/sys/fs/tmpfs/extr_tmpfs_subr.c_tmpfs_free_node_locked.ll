; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_node_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_node_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i64, i32, i32 }
%struct.tmpfs_node = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"node %p refcount zero\00", align 1
@tn_entries = common dso_local global i32 0, align 4
@M_TMPFSNAME = common dso_local global i32 0, align 4
@OBJ_TMPFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"leaked OBJ_TMPFS node %p vm_obj %p\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"tmpfs_free_node: type %p %d\00", align 1
@TMPFS_VNODE_ALLOCATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_free_node_locked(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmpfs_mount*, align 8
  %6 = alloca %struct.tmpfs_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %5, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %10 = call i32 @TMPFS_MP_ASSERT_LOCKED(%struct.tmpfs_mount* %9)
  %11 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %12 = call i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node* %11)
  %13 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %14 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %19 = bitcast %struct.tmpfs_node* %18 to i8*
  %20 = call i32 @KASSERT(i32 %17, i8* %19)
  %21 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %22 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %26 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %34 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32, %29
  %38 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %39 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %45 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %49 = load i32, i32* @tn_entries, align 4
  %50 = call i32 @LIST_REMOVE(%struct.tmpfs_node* %48, i32 %49)
  %51 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %52 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %37, %32, %3
  %54 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %55 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %124

59:                                               ; preds = %53
  %60 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %61 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %60)
  %62 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %63 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %62)
  %64 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %65 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %108 [
    i32 134, label %67
    i32 133, label %67
    i32 132, label %67
    i32 131, label %67
    i32 128, label %67
    i32 130, label %68
    i32 129, label %74
  ]

67:                                               ; preds = %59, %59, %59, %59, %59
  br label %114

68:                                               ; preds = %59
  %69 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %70 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @M_TMPFSNAME, align 4
  %73 = call i32 @free(i32 %71, i32 %72)
  br label %114

74:                                               ; preds = %59
  %75 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %76 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %88 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @atomic_subtract_long(i32* %88, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @OBJ_TMPFS, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = bitcast %struct.TYPE_5__* %102 to i8*
  %104 = call i32 @KASSERT(i32 %100, i8* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = call i32 @vm_object_deallocate(%struct.TYPE_5__* %105)
  br label %107

107:                                              ; preds = %93, %74
  br label %114

108:                                              ; preds = %59
  %109 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %110 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %111 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.tmpfs_node* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %107, %68, %67
  %115 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %116 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %119 = call i32 @uma_zfree(i32 %117, %struct.tmpfs_node* %118)
  %120 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %121 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %120)
  %122 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %123 = call i32 @tmpfs_free_tmp(%struct.tmpfs_mount* %122)
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %114, %58
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @TMPFS_MP_ASSERT_LOCKED(%struct.tmpfs_mount*) #1

declare dso_local i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.tmpfs_node*, i32) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_UNLOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @atomic_subtract_long(i32*, i32) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_5__*) #1

declare dso_local i32 @panic(i8*, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_LOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @tmpfs_free_tmp(%struct.tmpfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
