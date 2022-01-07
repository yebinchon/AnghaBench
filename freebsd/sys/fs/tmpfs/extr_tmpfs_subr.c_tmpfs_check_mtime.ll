; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_check_mtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_check_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.vm_object* }
%struct.vm_object = type { i32, i64, i64 }
%struct.tmpfs_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"check_mtime\00", align 1
@VREG = common dso_local global i64 0, align 8
@OBJ_TMPFS_NODE = common dso_local global i32 0, align 4
@OBJ_TMPFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"non-tmpfs obj\00", align 1
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_check_mtime(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.tmpfs_node*, align 8
  %4 = alloca %struct.vm_object*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = load %struct.vnode*, %struct.vnode** %2, align 8
  %6 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vnode*, %struct.vnode** %2, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VREG, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.vnode*, %struct.vnode** %2, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 1
  %16 = load %struct.vm_object*, %struct.vm_object** %15, align 8
  store %struct.vm_object* %16, %struct.vm_object** %4, align 8
  %17 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %18 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %21 = load i32, i32* @OBJ_TMPFS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %25 = load i32, i32* @OBJ_TMPFS, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %31 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %34 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %13
  %38 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %39 = call i32 @VM_OBJECT_WLOCK(%struct.vm_object* %38)
  %40 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %41 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %44 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %49 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %52 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.vnode*, %struct.vnode** %2, align 8
  %54 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %53)
  store %struct.tmpfs_node* %54, %struct.tmpfs_node** %3, align 8
  %55 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %56 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %59 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %47, %37
  %63 = load %struct.vm_object*, %struct.vm_object** %4, align 8
  %64 = call i32 @VM_OBJECT_WUNLOCK(%struct.vm_object* %63)
  br label %65

65:                                               ; preds = %12, %62, %13
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.vm_object*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.vm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
